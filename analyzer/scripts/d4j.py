#!/usr/bin/python3.8
import os
import argparse
import logging
from functools import partial
from multiprocessing import Pool
import multiprocessing
import subprocess
import glob
import json
import pandas as pd

import utils
from fl4apr import *
from config import *

BENCHMARKS_LIST = [bug_id.replace("\n", "") for bug_id in open(
    f'{SCRIPT_DIR}/d4j.benchmarks.lst', 'r').readlines()]

bug_to_patches = {}

def checkout(bugs_dir, entry):
    [proj, id] = entry.strip().split(' ')
    cmd = f'defects4j checkout -p {proj} -v {id}b -w {bugs_dir}/{proj}{id}b'
    print(cmd)
    if (subprocess.run(cmd, shell=True, capture_output=True).returncode != 0):
        print(f'Something wrong happened to {proj}_{id}')

def build_bugs(bugs):
    bugs = set(bugs)
    bugs_with_old_ant = set(
        filter(lambda bug: bug.ant_version == '1.8.4', bugs))

    # Build non-Lang projects first so that bug can be built with the proper ant version.
    with Pool(processes=8) as p:
        msgs = p.map(Bug.d4j_build, bugs - bugs_with_old_ant)

    with Pool(processes=8) as p:
        msgs += p.map(Bug.d4j_build, bugs_with_old_ant)
    
    with open('d4j.build.log', 'w') as f:
        f.write('\n'.join(msgs))

def capture_bug_with_patches(bug):
    msgs = []
    patches = bug_to_patches[bug.id]
    patches.append(None)
    for patch in patches:
        msg = bug.capture_all(patch=patch)
        msgs.append(msg)
    return "\n".join(msgs)

def capture_all_bugs_with_patches(bugs, jobs=24):
    logging.info(f'Capturing total {len(bugs)} defects4j bugs')
    with Pool(processes=jobs) as p:
        msgs= p.map(capture_bug_with_patches, bugs)
    with open('d4j.capture.log', 'w') as f:
        f.write('\n'.join(msgs))


def analyze(bug: Bug):
    log_anal = open('d4j.analyze.log', 'w')
    for patch in bug_to_patches[bug.id]:
        #result_dir = f"{bug.project_root_dir}/infer-out-{patch[0]}/aprval_results"
        #if os.path.exists(f"{result_dir}/feature.json"):
        #    print(f"{SUCCESS}: {patch} is already analyzed")
        #    continue
        bug.analyze_and_validate(patch)
        
    log_anal.flush()

def preproc(bug: Bug):
    for patch in bug_to_patches[bug.id]:
        bug.preproc_patch(patch)

def analyze_bugs(bugs):
    logging.info(f'Capturing total {len(bugs)} defects4j bugs')
    with Pool(processes=4) as p:
        p.map_async(analyze, bugs).get()

def checkout_d4j_395_benchmarks(bugs_dir):
    with Pool(processes=24) as p:
        p.map(partial(checkout, bugs_dir), BENCHMARKS_LIST)


def evaluate(bugs):
    msgs = []
    df_list = []
    for bug in bugs:
        for patch in bug_to_patches[bug.id]:
            patch_id = patch[0].split("-")[2].strip("patch")
            patch_tool = patch[0].split("-")[3]
            correctness = patch[0].split("-")[4]
            source_from = patch[0].split("-")[-1].rstrip(".patch")
            msg = f"{bug.id},{patch_id},{patch_tool},{correctness}"
            result_dir = f"{bug.project_root_dir}/infer-out-{patch[0]}/aprval_results"
            if not os.path.exists(f"{result_dir}/feature.json"):
                msg += ",ERROR"
            else:
                with open(f"{result_dir}/execution_time.txt") as time_log:
                    elapsed_time = time_log.read()
                    msg += f",{elapsed_time}"
                with open(f"{result_dir}/feature.json", "r") as json_file:
                    feature_vec = json.load(json_file)
                    for f_name, f_value in feature_vec.items():
                        if f_name == "FI_rm_def":
                            print(f"{bug.id}-{patch_id}-{patch_tool}-{correctness}-{source_from}", f_value)
                        if f_value != 0: 
                            msg += f",{f_name}"

                    feature_vec["id"] = f"{bug.id}-{patch_id}-{patch_tool}-{correctness}-{source_from}"
                    feature_vec["correctness"] = correctness
                    df_list.append(feature_vec)
            msgs.append(msg)

    df = pd.DataFrame.from_dict(df_list).set_index(["id", "correctness"])
    df.to_csv("result_ar_best.csv")
    print(df)
    with open("activated_ar_best.txt", "w") as f:
        f.write('\n'.join(msgs))

def test_bug_with_patches(bug):
    patches = bug_to_patches[bug.id]
    msgs = []
    for patch in patches:
        (completed, msg) = bug.test_patch(patch)
        if completed != 0:
            msg = f"{bug.id} with {patch[0]} fail to pass all tests\n" + msg
            print(f"{ERROR}: {msg}")
        else:
            msg = f"{bug.id} with {patch[0]} passes all tests"
            print(f"{SUCCESS}: {msg}")
        msgs.append(msg)
    return "\n".join(msgs)

def test_bugs(bugs):
    logging.info(f'Capturing total {len(bugs)} defects4j with patches')

    with Pool(processes=4) as p:
        msgs= p.map(test_bug_with_patches, bugs)
    with open('d4j.test_patch.log', 'w') as f:
        f.write('\n'.join(msgs))

def extract_trace(bug):
    msgs = []
    # extract trace of org
    patches = bug_to_patches[bug.id]
    patches.append(None)
    # extract trace of each patches 
    for patch in patches:
        msg = Target(bug.project_root_dir).run(1200, patch)
        msgs.append(msg)

    return "\n".join(msgs)

def extract_traces(bugs):
    with Pool(processes=4) as p:
        msgs= p.map(extract_trace, bugs)
    
    with open("d4j.trace.log", 'w') as f:
        f.write('\n'.join(msgs))

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("mode",
                        choices=['capture', 'checkout', 'analyze', 'evaluate', 'test', 'trace', "preproc", "build", "package"])
    parser.add_argument('--filter', help='Specifying target bug ids to analyze')
    parser.add_argument("--patches", default=None, help="specifying patch data")
    parser.add_argument("bugs_dir")
    args = parser.parse_args()

    patches = glob.glob(f"{args.patches}/**/*.patch", recursive=True)
    
    
    bugs = [
        Bug(os.path.abspath(dir)) for dir in glob.glob(f'{args.bugs_dir}/*b') if os.path.isdir(dir)
    ]

    if args.filter != None:
        with open(args.filter, 'r') as f:
            targets = [id.strip() for id in f.readlines()]
        bugs = [bug for bug in bugs if bug.id in targets]

    for patch in patches:
        patch_id = patch.split("/")[-1].rstrip(".patch")
        bug_id = "".join(patch.split("/")[-1].split("-")[:2]) + "b"
        
        if bug_id in bug_to_patches:
            bug_to_patches[bug_id].append((patch_id, patch))
        else:
            bug_to_patches[bug_id] = [(patch_id, patch)]
    
    bugs = [bug for bug in bugs if bug.id in bug_to_patches]
    assert (all([b.build_type == 'defects4j' for b in bugs]))

    if args.mode == 'checkout':
        checkout_d4j_395_benchmarks(args.bugs_dir)
    elif args.mode == 'capture':
        capture_all_bugs_with_patches(bugs)
    elif args.mode == 'analyze':
        analyze_bugs(bugs)
    elif args.mode == 'evaluate':
        evaluate(bugs)
    elif args.mode == 'test':
        test_bugs(bugs)
    elif args.mode == 'trace':
        extract_traces(bugs)
    elif args.mode == "build":
        build_bugs(bugs)
    elif args.mode == "preproc":
        with Pool(processes=16) as p:
            p.map_async(preproc, bugs).get()
    elif args.mode == "package":
        for bug in bugs:
            bug.export_packages()