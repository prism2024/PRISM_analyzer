import os, shutil
import random, time
import subprocess
import utils

from config import *

TIME_BUDGET = 1200

class Bug:
    project_root_dir: str
    id: str
    project_name: str
    build_type: str
    class_path: str
    test_methods: str
    time_to_analyze: float
    time_to_capture: float
    java_version_file: str
    java_version: str = None
    ant_version: str

    VALIDATION_RESULTS_NAME: str = "results.csv"

    def __init__(self, project_root_dir):
        self.project_root_dir = project_root_dir
        self.id = os.path.basename(project_root_dir)
        self.project_name = re.sub("[0-9]+b", "", self.id)
        if os.path.isfile(f"{project_root_dir}/defects4j.build.properties"):
            self.build_type = "defects4j"
            # TODO:
            self.class_path = f"{self.project_root_dir}"
            self.java_version_file = f'{project_root_dir}/.java_version.d4j'
            with open(f"{project_root_dir}/defects4j.build.properties",'r') as f:
                self.test_methods = f.readlines()[-1].split('=')[1].split(',')
            try:
                with open(self.java_version_file, 'r') as f:
                    self.java_version = f.readline()
            except FileNotFoundError:
                pass

        elif os.path.isfile(f"{project_root_dir}/pom.xml"):
            self.build_type = "mvn"
            self.class_path = None
        else:
            print(f"[FAIL] {os.path.basename(project_root_dir)}: unsupported build system")
            exit(1)
        self.time_to_analyze = 0.0
        self.time_to_capture = 0.0
        if self.project_name == "Lang":
            self.ant_version = "1.8.4"
        else:
            self.ant_version = "1.10.12"
            
    def d4j_build(self):
        # Use older ant for Lang project
        defects4j_ant_path = f'{D4J_HOME}/major/bin/ant'
        ant_with_version = f'{os.path.dirname(defects4j_ant_path)}/ant.{self.ant_version}'

        os.environ["JAVA_HOME"] = JDK_8
        if self.ant_version in utils.execute(f"{defects4j_ant_path} -version").stdout:
            pass
        else:
            if os.path.exists(defects4j_ant_path):
                os.system(f"rm {defects4j_ant_path}")
            os.system(f"cp -P {ant_with_version} {defects4j_ant_path}")

        print(f"{PROGRESS}build {self.id} by ant {self.ant_version}")
        cppath = f'{self.project_root_dir}/.classpath.d4j'
        export_cmd = f'{DEFECTS4J} export -p cp.test -w {self.project_root_dir}'
        cp_exported = subprocess.run(export_cmd, shell=True, capture_output=True).stdout.decode()
        with open(cppath, 'w') as f:
            # Add common dependencies specified by D4J
            common_libs = []
            if self.project_name == 'Mockito':
                common_libs += [
                    os.path.abspath(jar) for jar in glob.glob(f'{self.project_root_dir}/lib/**/*.jar', recursive=True)
                ]
            common_libs += [
                os.path.abspath(jar) for jar in glob.glob(f'{D4J_HOME}/framework/projects/{self.project_name}/lib/**/*.jar', recursive=True)
            ]
            common_libs.append(f'{D4J_HOME}/framework/projects/lib/junit-4.11.jar')
            common_libs.append(f'{D4J_HOME}/framework/projects/lib/cobertura-2.0.3.jar')
            f.write(':'.join(common_libs))
            f.write(':' + cp_exported)

        ret = utils.execute(f'{DEFECTS4J} test', dir=self.project_root_dir)
        print(msg := f"{self.id}, {ret.return_code}\n")
        return msg

    # For dynamic traces
    def export_packages(self):
        if os.path.exists(f"{self.project_root_dir}/target/classes"):
            target_pattern = ".*/target/[^/]+/"
        elif os.path.exists(f"{self.project_root_dir}/build/classes/main"):
            target_pattern = ".*/build/classes/[^/]+/"
        elif os.path.exists(f"{self.project_root_dir}/build/classes"):
            target_pattern = ".*/build/[^/]+/"
        elif os.path.exists(f"{self.project_root_dir}/build") and os.path.exists(f"{self.project_root_dir}/build-tests"):
            target_pattern = ".*/build[^/]*/"
        else:
            target_pattern = ".*/target/.*classes/"

        print(target_pattern)
        packages = [p for p in glob.glob(f"{self.project_root_dir}/**/*.class", recursive=True) if re.search(target_pattern, p)]
        packages = [re.sub(target_pattern, "", p).replace("/", ".").rstrip(".class") for p in packages]
        packages = set([".".join(p.split(".")[:-1]) for p in packages])

        with open(f"{self.project_root_dir}/packages.lst", "w") as f:
            f.write("\n".join(packages))


    def checkout(self):
        #Remove all analysis data
        if os.path.exists(f"{self.project_root_dir}/aprval-summaries"):
            shutil.rmtree(f"{self.project_root_dir}/aprval-summaries")
        
        if os.path.exists(f"{self.project_root_dir}/aprval-results"):
            shutil.rmtree(f"{self.project_root_dir}/aprval-results")

        ret = subprocess.run(f"git checkout -- {self.project_root_dir}",
                             shell=True,
                             cwd=self.project_root_dir)
        if ret.returncode == 128:
            backoff = random.uniform(0.1, 2.0)
            time.sleep(backoff)
            self.checkout()

        elif ret.returncode != 0:
            print(f"[FAIL] git checkout")
            exit(-1)

    
    def cache_exists(self, cached_dir) -> bool:
        if os.path.isdir(cached_dir):
            return True
        return False
    
    def capture_all(self, patch=None):
        start_time = time.time()
        patch_id = patch[0] if patch != None else "origin"
        cache_dir = f"{self.project_root_dir}/infer-out-{patch_id}"
        cp_dir = f"{self.project_root_dir}/cp-{patch_id}"
        
        # Build the target project to export cp info
        # If the patch is given, capture the project after applying patch 
        # if os.path.exists(cache_dir):
        #     return ""

        self.checkout()
        if patch != None:
            ret = subprocess.run(f"patch -p1 --binary < {patch[1]}", shell=True, cwd=self.project_root_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            if ret.returncode != 0:
                print(f"{FAIL} fail to apply {patch[1]}")
                return ret.returncode
        self.d4j_build()

        if self.build_type == "mvn":
            build_cmd = f"mvn clean package {MVN_OPT}"

            capture_cmd = f"{INFER_PATH} capture --results-dir {cache_dir} -- {build_cmd}"
            print(f"{PROGRESS}: capture project by {capture_cmd}")
            completed = subprocess.run(capture_cmd,
                                       shell=True,
                                       cwd=self.project_root_dir)
            self.time_to_capture_original = time.time() - start_time

        elif self.build_type == "defects4j":
            cppath = f'{self.project_root_dir}/.classpath.d4j'
            with open(cppath, 'r') as f:
                classpath = f.readline()
                
            export_src_cmd = f'{DEFECTS4J} export -p dir.src.classes -w {self.project_root_dir}'
            src_dir = self.project_root_dir + '/' + subprocess.run(export_src_cmd,
                                                                   shell=True,
                                                                   capture_output=True).stdout.decode()
            export_testsrc_cmd = f'{DEFECTS4J} export -p dir.src.tests -w {self.project_root_dir}'
            testsrc_dir = self.project_root_dir + '/' + subprocess.run(export_testsrc_cmd,
                                                                       shell=True,
                                                                       capture_output=True).stdout.decode()
            
            java_files = glob.glob(f'{src_dir}/**/*.java', recursive=True) + glob.glob(f'{testsrc_dir}/**/*.java', recursive=True)
            # Remove a problemataic source file for project Mockito
            if 'Mockito' in os.path.basename(self.project_root_dir):
                erroneous = [
                    f'{src_dir}/org/mockito/internal/matchers/LocalizedMatcher.java',
                    f'{testsrc_dir}/org/mockitoutil/ExtraMatchers.java'
                ]
                java_files = [f for f in java_files if f not in erroneous]

            with open(f"{self.project_root_dir}/java_files", 'w') as f:
                java_files_str = "\n".join(java_files)
                f.writelines(java_files_str)

            # Additional javac options for each project
            if 'Lang' in os.path.basename(self.project_root_dir):
                # opt = '-encoding ISO-8859-1 -source 1.4'
                opt = '-encoding ISO-8859-1'
            else:
                opt = ''

            for version in ['1.8', '1.7', '1.6', '1.5', '1.4']:
                if self.java_version != None:
                    version = self.java_version
                
                if not os.path.exists(cp_dir):
                    os.mkdir(cp_dir)
                build_cmd = f"javac {opt} -source {version} -cp {classpath} @{self.project_root_dir}/java_files -d {cp_dir}"
                capture_cmd = f"{INFER_PATH} capture --results-dir {cache_dir} -- {build_cmd}"
                print(f"{PROGRESS}: capture project by {capture_cmd}")
                completed = subprocess.run(capture_cmd,
                                           shell=True,
                                           cwd=self.project_root_dir,
                                           capture_output=True)
                if (self.cache_exists(cache_dir) is False or completed.returncode != 0):
                    continue
                else:
                    self.time_to_capture_original = time.time() - start_time
                    shutil.move(f"{cp_dir}", f"{cache_dir}/cp-out")

                with open(self.java_version_file, 'w') as f:
                    f.write(version)
                break
        
        print(msg := f'{SUCCESS}{self.id}, {patch_id}, {completed.returncode}\n')
        return msg

    def preproc_patch(self, patch):
        self.checkout()
        test_opt = ' '.join([f"--test-methods {mthd}" for mthd in self.test_methods])
        #preproc original program
        target_origin = f"{self.project_root_dir}/infer-out-origin"
        cmd_org = f"{INFER_PATH} aprval --spec-checker-only --preproc-org --patch-dir {patch[1]} --results-dir {target_origin} {test_opt}"
        print(f"{PROGRESS} preproc {self.id} with {cmd_org}")
        ret = utils.execute(cmd_org, dir=self.project_root_dir)
        if ret.return_code != 0:
            print(f"{FAIL} preproc {self.id}")
            return -1 
        else:  
            print(f"{SUCCESS} preproc {self.id}")

        #preproc patch program
        target_patch = f"{self.project_root_dir}/infer-out-{patch[0]}"
        subprocess.run(f"patch -p1 --binary < {patch[1]}", shell=True, cwd=self.project_root_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        
        if not self.cache_exists(target_patch):
            print(f"{FAIL} {target_patch} not found")
            return -1 
        
        cmd_patch = f"{INFER_PATH} aprval --spec-checker-only --preproc-patch --patch-dir {patch[1]} --results-dir {target_patch} {test_opt}"
        print(f"{PROGRESS} preproc {patch[0]} with {cmd_patch}")
        ret = utils.execute(cmd_patch, dir=self.project_root_dir)

 
        if ret.return_code != 0:
            print(f"{FAIL} preproc {patch[0]} with {patch[1]}")
            return -1 
        else:  
            print(f"{SUCCESS} preproc {patch[0]} with {patch[1]}")

        return ret.return_code

    def analyze_and_validate(self, patch, debug=False):
        # Initialize
        target_origin = f"{self.project_root_dir}/infer-out-origin"
        target_patch = f"{self.project_root_dir}/infer-out-{patch[0]}"
        result_dir = f"{target_patch}/aprval_results"
        if os.path.isdir(result_dir):
            shutil.rmtree(result_dir)
        
        os.mkdir(result_dir)


        start_time = time.time()
        # conduct preprocessing before analysis
        self.preproc_patch(patch)
        debug_opt = "--scheduler restart -g" if debug else ""
        self.checkout()
        
        #analyze the original program
        if not self.cache_exists(target_origin):
            print(f"{FAIL} {target_origin} not found")
            return -1 

        test_opt = ' '.join([f"--test-methods {mthd}" for mthd in self.test_methods])
        analyze_cmd = f"{INFER_PATH} {debug_opt} aprval --spec-checker-only --spec-inference --patch-dir {patch[1]} --results-dir {target_origin} {test_opt}"
        print(f"{PROGRESS} analyze {self.id} with {analyze_cmd}")
        ret = utils.execute(analyze_cmd, dir=self.project_root_dir, timeout=TIME_BUDGET)
        
        if ret.return_code != 0:
            print(f"{FAIL} analyze {self.id}")
            return -1 #exit(ret.return_code)
        else:  
            print(f"{SUCCESS} analyze {self.id}")

        #analyze patch program
        subprocess.run(f"patch -p1 --binary < {patch[1]}", shell=True, cwd=self.project_root_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        
        if not self.cache_exists(target_patch):
            print(f"{FAIL} {target_patch} not found")
            return -1 
        
        analyze_cmd = f"{INFER_PATH} {debug_opt} aprval --spec-checker-only --spec-validate --patch-dir {patch[1]} --results-dir {target_patch} {test_opt}"
        print(f"{PROGRESS} validate {patch[0]} with {analyze_cmd}")
        ret = utils.execute(analyze_cmd, dir=self.project_root_dir, timeout=TIME_BUDGET)

        #save resulting logs 
        self.time_to_analyze = time.time() - start_time
        
        if ret.return_code != 0:
            print(f"{FAIL} analyze {patch[0]}")
            return -1 
        else:  
            time_log = str(self.time_to_analyze)
            print(f"{SUCCESS} analyze {patch[0]}, {time_log}")
            if os.path.exists(f"{result_dir}/feature.json"):
                os.remove(f"{result_dir}/feature.json")
            shutil.move(f"{self.project_root_dir}/result.json", f"{result_dir}/feature.json")
        
        shutil.copytree(f"{self.project_root_dir}/aprval-debug", f"{result_dir}/aprval-debug")
        os.remove(f"{target_origin}/logs")
        os.remove(f"{target_patch}/logs")
        with open(f"{result_dir}/execution_time.txt", "w") as f:
            f.write(str(self.time_to_analyze))
        return ret.return_code

    def test_patch(self, patch):
        self.checkout()
        print(f"{PROGRESS} test {self.project_root_dir} by applying {patch[1]}")
        ret = utils.execute(f"patch -p1 --binary < {patch[1]}", dir=self.project_root_dir)

        print(ret.stdout)

        target_dir = os.path.join(self.project_root_dir, "target")
        if os.path.isdir(target_dir):
            print(target_dir)
            shutil.rmtree(target_dir)

        ret = utils.execute("defects4j test", dir=self.project_root_dir)
        print(ret.stdout)

        if "Failing tests: 0" in ret.stdout:
            print(f"{SUCCESS} {patch[0]} passes all tests")
            return (0, ret.stdout)
        else:
            print(f"{FAIL} {patch[0]} fail to pass all tests")
            return (-1, "")