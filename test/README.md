# Testing Framework

## Usage:

From polyglot directory:

```bash
$ test/run-test.py
```

This will kick off a run of all avaiable tests on the system.

The following arguments are available:
* `--test` - comma separated list of tests to be run
* `--language` - comma separated list of langauges to use

## Implementation:

The framework is rather simple to use. The only thing that is needed is a
`prereq` and a `test` file in each directory needed to test There can optionally
be a file extension that refers to the language being used. The two files can
be written in any language you like as long as the following conditions are met:
* The language is a scripting language or otherwise can be run without
  compilation.
* The script file has a [shebang](http://en.wikipedia.org/wiki/Shebang_%28Unix%29)
  and can be reasonably expected to be able to be run on any UNIX operating system
  * Python or Bash scripting is generally a safe bet, since most modern UNIX
    operating systems have those installed. Even if they don't, it'll be
    difficult to run the test framework without them.
  * If you would like to write your `test` file in another language, such as the
    language that's being tested, consider writing the `prereq` file in Python
    or Bash scripting, so that there is graceful degredation on systems that do
    not support that language.
  * If writing scripts in Python, note that [PEP
    394](https://www.python.org/dev/peps/pep-0394/)
    specifically states:
    > In order to tolerate differences across platforms, all new code that needs
    > to invoke the Python interpreter should not specify `python`, but rather
    > should specify either `python2` or `python3` ... This distinction should be
    > made in shebangs.

    This will make your friends who are running certain bleeding edge distros
    much happier.
  * For [portability](http://en.wikipedia.org/wiki/Shebang_%28Unix%29#Portability),
    please prefer using `/usr/bin/env <interpretor>` over
    `/usr/bin/<interpretor>`.
  * The script must be executable by the current user:
    ```bash
    $ chmod +x <filename>
    $ git update-index --chmod=+x <filename>
    ```
* `prereq` script requirements:
  * This one is simple. It must check to see if the compilers/interpretors needed
    to run the script exist. **NOTE**: If versions matter (E.G. python, rust),
    then this script must check to verify that the right version is installed.
  * If everything is OK, the script must write a comma separated list of
    available tests to `stdout`, and exit with status zero. You can currently
    output any or all of the following tests:
    * animals
    * anagrams
    * triple
    * word_count
  * If there is a problem, script must exit with a non-zero status, and
    optionally write something to `stderr`. Any `stderr` output will be passed
    on to the user (E.G. how to download/install the prerequisites).
* `test` script requirements:
  * This one is also simple. The first argument it receives is the program type
    (E.G. `wordcount`, `triples`, etc). Any/all other arguments along with the
    standard input must be passed to the program that is being run.
  * The `test` script has the following environmental variables available to it:
    * `TMPDIR` - Temporary directory (useful for compilation output)
    * `TESTDIR` - Directory that the test is in
  * Any standard output, standard error, and the exit code must be passed back
    to the caller.
  * Preferably, use the `TMPDIR` environmental variables to avoid cluttering
    up the source tree.

Reference implementations of the `test` and `prereq` scripts will be available
in the `dart` folder for interpreted languages, and the `rust` folder for
compiled languages.
