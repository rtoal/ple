#!/usr/bin/env bash
k ses.k < /dev/null && \
k function_examples.k < /dev/null | diff ../test/function_examples_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** K TESTS FAILED ***"
    exit 1
else
    echo
    echo "K TESTS PASSED"
fi
