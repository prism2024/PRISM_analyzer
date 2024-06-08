import json
import time
import os, sys, glob
import re
import subprocess

from typing import List, Set, Dict, Tuple, Optional
import xml.etree.ElementTree as ET
from colorama import Fore, Style  #type:ignore

### PATH VARIABLES
ROOT_DIR = os.getcwd()
SCRIPT_DIR = f'{os.path.dirname(os.path.realpath(__file__))}'
D4J_HOME = os.getenv("D4J_HOME")
PATCH_DIR = f"/home/dowon/patch-identifier/benchmarks/patches"
PATCH_GEN_DIR = f"/home/dowon/patch-identifier/benchmarks/patches_generated"

INFER_HOME = f'{SCRIPT_DIR}/..'
INFER_PATH = f'{INFER_HOME}/infer/bin/infer'
DEFECTS4J = f'{D4J_HOME}/framework/bin/defects4j'

JUNIT_CLASSPATH = f"{INFER_HOME}/infer/lib/java/junit-prl-1.0.0.jar"
JUNIT_CORE_CLASS = "kr.ac.korea.prl.FL4APRJUnitRunner"

MVN_OPT = "-V -B -Denforcer.skip=true -Dcheckstyle.skip=true -Dcobertura.skip=true -Drat.skip=true -Dlicense.skip=true -Dfindbugs.skip=true -Dgpg.skip=true -Dskip.npm=true -Dskip.gulp=true -Dskip.bower=true -DskipTests=true -DskipITs=true -Dtest=None -DfailIfNoTests=false"

ERROR = f"{Fore.RED}[ERROR]{Style.RESET_ALL}"
FAIL = f"{Fore.YELLOW}[FAIL]{Style.RESET_ALL}"
WARNING = f"{Fore.MAGENTA}[WARNING]{Style.RESET_ALL}"
SUCCESS = f"{Fore.CYAN}[SUCCESS]{Style.RESET_ALL}"
TIMEOUT = f"{Fore.LIGHTMAGENTA_EX}[TIMEOUT]{Style.RESET_ALL}"
PROGRESS = f"{Fore.LIGHTWHITE_EX}[PROGRESS]{Style.RESET_ALL}"
SERIOUS = f"{Fore.LIGHTRED_EX}[SERIOUS]{Style.RESET_ALL}"

JDK_6 = "/usr/lib/jvm/jdk1.6.0_45"
JDK_7 = "/usr/lib/jvm/jdk1.7.0_80"
JDK_8 = "/usr/lib/jvm/java-8-openjdk-amd64"
JDK_11 = "/usr/lib/jvm/jdk-11.0.8"

MSG_TEST_FAIL = "test failures"
MSG_ASSERT_FAIL = "Assertion"
MSG_COMPILE_FAIL = "Compilation failure"
MSG_NPE = "NullPointerException"

'''
logger = logging.getLogger()
logger.setLevel(logging.INFO)
formatter = logging.Formatter('[%(asctime)s/%(levelname)s]%(processName)s - %(message)s')
file_handler = logging.FileHandler("logs/check_NPE.log")
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)
'''