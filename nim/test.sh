#!/usr/bin/env bash
nim c permutations.nim && ./permutations I like carrots | diff ../test/carrots_expected - && \
nim c triple.nim && ./triple | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** NIM TESTS FAILED ***"
    exit 1
else
    echo
    echo "NIM TESTS PASSED"
fi
