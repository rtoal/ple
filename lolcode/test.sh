#!/usr/bin/env bash
lci triple.lol | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** LOLCODE TESTS FAILED ***"
    exit 1
else
    echo
    echo "LOLCODE TESTS PASSED"
fi
