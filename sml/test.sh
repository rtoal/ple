#!/usr/bin/env bash
mlton hello.sml && ./hello && \
mlton quicksort.sml && ./quicksort && \
mlton quicksort.sml && ./stack && \

if [ $? -ne 0 ]; then
    echo
    echo "*** STANDARD ML TESTS FAILED ***"
    exit 1
else
    echo
    echo "STANDARD ML TESTS PASSED"
fi
