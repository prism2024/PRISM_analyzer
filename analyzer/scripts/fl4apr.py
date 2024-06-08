#!/usr/bin/python3.8
import argparse
import time
import glob
import os
import subprocess
import shutil
import csv
import sys
import random
import utils
from pprint import pprint
from typing import List, Dict
from dataclasses import asdict, dataclass, field, fields, is_dataclass
from bug import Bug
from config import *
from tracer import Target

ROOT_DIR = os.getcwd()

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--debug", default=False, action='store_true', help="debug option")
    parser.add_argument("--recap", default=False, action='store_true', help="re capture")
    parser.add_argument("--capture", default=False, action='store_true', help="patch_id")
    parser.add_argument("--prepare", default=False, action='store_true', help="d4j build")
    parser.add_argument("--analyze", default=False, action='store_true', help="run bottom-up analysis only")
    parser.add_argument("--test", default=False, action='store_true', help="test target bench")
    parser.add_argument("--aprval", default=False, action='store_true', help="validate the apr generated patch")
    parser.add_argument("--trace", default=False, action='store_true', help="run tracer")
    parser.add_argument("--preproc", default=False, action='store_true', help="preprocessing for analysis")
    parser.add_argument('--patch', help='Specifying target patch file to validate')
    args = parser.parse_args()

    patch = (args.patch.split("/")[-1].rstrip(".patch"), args.patch) if args.patch!=None else None
    if args.test: 
        bug_dir = args.patch.split("/")[-2]
        bug = Bug(os.path.join(ROOT_DIR, bug_dir))
    else:
        bug = Bug(ROOT_DIR)

    if args.prepare:
        print(f"{PROGRESS} Prepare")
        bug.d4j_build()
    elif args.capture:
        bug.capture_all(patch=patch)
    elif args.analyze:
        bug.analyze_and_validate(patch, args.debug)
    elif args.test:
        bug.test_patch(patch)
    elif args.trace:
        print(f"{PROGRESS} Start trace")
        Target(ROOT_DIR).run(1200, patch, verbose=True)
    elif args.preproc:
        bug.preproc_patch(patch)
    else:
        #Framework pipeline
        bug.export_packages()
        