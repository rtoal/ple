#!/usr/bin/env bash
mcs Greeter.cs && mono Greeter.exe && \
mcs Tripler.cs && mono Tripler.exe | diff ../test/triple_expected - && \
mcs TraditionalWordCounter.cs && mono TraditionalWordCounter.exe < ../test/wordcount_input | diff ../test/wordcount_expected - && \
mcs TraditionalWordCounter.cs && mono TraditionalWordCounter.exe < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
mcs WordCounter.cs && mono WordCounter.exe < ../test/wordcount_input | diff ../test/wordcount_expected - && \
mcs WordCounter.cs && mono WordCounter.exe < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -


if [ $? -ne 0 ]; then
    echo
    echo "*** C# TESTS FAILED ***"
    exit 1
else
    echo
    echo "C# TESTS PASSED"
fi
