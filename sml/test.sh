#!/usr/bin/env bash
mlton clockhands.sml && ./clockhands | diff ../test/clockhands_expected - && \
mlton hello.sml && ./hello && \
mlton quicksort.sml && ./quicksort && \
mlton stack.sml && ./stack

if [ $? -ne 0 ]; then
    echo
    echo "*** STANDARD ML TESTS FAILED ***"
    exit 1
else
    echo
    echo "STANDARD ML TESTS PASSED"
fi
