#!/usr/bin/python3.9

import os, shutil
import glob
import re
from typing import List
import utils
from bug import Bug
from config import *

# PATH CONFIGURATIONS
AGENT_JAR_PATH = f'{SCRIPT_DIR}/../../tracer/target/tracer-1.0-SNAPSHOT-all.jar'
RERUN = False
assert os.path.isfile(AGENT_JAR_PATH)


class Target(Bug):
    class_path: str
    test_classes: List[str]

    def __init__(self, project_root_dir):
        super().__init__(project_root_dir)
        with open(f'{project_root_dir}/.classpath.d4j') as f:
            self.class_path = f.readlines()[0]

        self.test_classes = list(set([re.sub('::.*', '', m.strip())
                             for m in self.test_methods]))

    def run(self, timeout, patch, verbose=False):
        jvm_opts = "-Xms128m -Xmx128m" if self.id == 'Lang43b' else ""
        patch_id = patch[0] if patch != None else "origin"

        inferout_dir = f"{self.project_root_dir}/infer-out-{patch_id}"

        # if os.path.exists(f"{inferout_dir}/trace-out"):          
        #   print(log := f'{self.id},{patch_id},0,0.0,True')
        #   return log

        cp_dir = f"{inferout_dir}/cp-out"
        print(f"CP : {cp_dir}:{self.class_path}")
        print(f"{PROGRESS} extract trace of {self.id} after applying {patch_id}")
        
        # Run all tests to extract stack trace info
        test_methods = [t.replace('::', '#') for t in self.test_methods]
        for test_class in self.test_classes:
          cmd = (
              f'java {jvm_opts} -javaagent:{AGENT_JAR_PATH}=".,{test_class},true" '
              f'-cp {cp_dir}:{self.class_path} '
              f'org.junit.runner.JUnitCore {test_class}'
          )
          if verbose:
            print(cmd)
          ret = utils.execute(cmd, dir=self.project_root_dir, verbosity=0, timeout=1800)

          # if timeout occurs, run only failing test
          if ret.return_code == 124:
            test_methods_within_class = [t for t in test_methods if t.startswith(test_class)]
            print(f"{TIMEOUT} Rerun tracer only using failing test")
            cmd = (f'java {jvm_opts} -javaagent:{AGENT_JAR_PATH}=".,{test_class}" '
                   f'-cp {JUNIT_CLASSPATH}:{cp_dir}:{self.class_path} '
                   f'{JUNIT_CORE_CLASS} {",".join(test_methods_within_class)}')
            if verbose:
              print(cmd)
            ret = utils.execute(cmd, dir=self.project_root_dir, verbosity=0, timeout=1800)

        succeed = all(map(lambda tc: len(glob.glob(f'{self.project_root_dir}/fl4apr-out/{tc}/*.csv')) > 0, self.test_classes))

        result_dir = f"{inferout_dir}/trace-out"
        backup_dir = f"{self.project_root_dir}/trace-out/{patch_id}"
        if succeed:
          os.makedirs(f"{self.project_root_dir}/trace-out", exist_ok=True)
          if os.path.exists(backup_dir):
            shutil.rmtree(backup_dir)
          shutil.copytree(f"{self.project_root_dir}/fl4apr-out", backup_dir)
          if os.path.exists(result_dir):
            shutil.rmtree(result_dir)
          shutil.move(f"{self.project_root_dir}/fl4apr-out", result_dir)
          print(f"{SUCCESS} extract trace of {self.id} after applying {patch_id}")

        print(log := f'{self.id},{patch_id},{ret.return_code},{ret.time},{succeed}')
        return log
