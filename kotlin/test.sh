#!/usr/bin/env bash
kotlinc -script hello.kts && \
kotlinc -script triple.kts | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** KOTLIN TESTS FAILED ***"
    exit 1
else
    echo
    echo "KOTLIN TESTS PASSED"
fi
