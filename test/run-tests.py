#!/usr/bin/env python2
import os
import os.path
import glob
import subprocess
import abc
# Config vars

SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
MAIN_DIR = SCRIPT_DIR + '/../'
TEST_FILE = '/test*'
PREREQ_FILE = '/prereq*'
NEEDED_FILES = (TEST_FILE, PREREQ_FILE)

# End config vars


def get_directory_list():
    return os.listdir(MAIN_DIR)


def get_valid_directories_from_list(directories):
    def check_files(directory):
        return all((True if glob.glob(MAIN_DIR + directory + name) else False
                    for name in NEEDED_FILES))
    return (folder for folder in directories if check_files(folder))


def check_prereq(directory):
    prereq = glob.glob(MAIN_DIR + directory + PREREQ_FILE)
    process = subprocess.Popen(prereq[0],
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    if process.returncode != 0:
        print("Language %s cannot be tested." % directory)
        if stderr:
            print(stderr)
        return False
    else:
        return stdout.split(',')


def determine_tests_to_run(directories):
    dir_mapping = {directory: check_prereq(directory)
                   for directory in directories}
    return {key: values for (key, values) in dir_mapping.items() if values}


class Test:
    __metaclass__ = abc.ABCMeta

    def __init__(self, language):
        self.language = language

    def run_test(self):
        run_test_file = glob.glob(MAIN_DIR + self.language + TEST_FILE)
        test = subprocess.Popen([run_test_file] + self.args,
                                stdin=subprocess.PIPE,
                                stdout=subprocess.PIPE)
        stdout, stderr = test.communicate(input=self.stdin)
        valid_stdout, valid_stderr = self.valid_stdout, self.valid_stderr
        if stdout != valid_stdout or stderr != valid_stderr:
            print('Test %s for language %s failed!' % self.name, self.language)
            if stdout != valid_stdout:
                print('Expected stdout:')
                print(valid_stdout)
                print('Got stdout:')
                print(stdout)
            if stderr != valid_stderr:
                print('Expected stderr:')
                print(valid_stderr)
                print('Got stderr:')
                print(stderr)
            return False
        else:
            print('Test %s for language %s passed!' % self.name, self.language)
            return True

    @property
    def args(self):
        return []

    @property
    def stdin(self):
        return None

    @abc.abstractproperty
    def name(self):
        pass

    @property
    def valid_stdout(self):
        return None

    @property
    def valid_stderr(self):
        return None


class TripleTest(Test):
    @property
    def name(self):
        return 'triple'

    @property
    def valid_stdout(self):
        with open(SCRIPT_DIR + 'triple_expected_result') as triple_output:
            return triple_output.read()


class WordCountTest(Test):
    @property
    def name(self):
        return 'word count'

    @property
    def stdin(self):
        with open(SCRIPT_DIR + 'word_count_input') as word_count_input:
            return word_count_input.read()

    @property
    def valid_stdout(self):
        with open(SCRIPT_DIR + 'word_count_output') as word_count_output:
            return word_count_output.read()


class Animals(Test):
    @property
    def name(self):
        return 'animals'

    @property
    def valid_stdout(self):
        with open(SCRIPT_DIR + 'animals_expected_result') as animals_output:
            return animals_output.read()


if __name__ == '__main__':
    dirs = get_directory_list()
    valid_dirs = get_valid_directories_from_list(dirs)

    tests_to_run = determine_tests_to_run(valid_dirs)
