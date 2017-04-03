#!/usr/bin/env bash
chpl hello.chpl && ./a.out && \
chpl sum_of_even_squares.chpl && ./a.out && \
chpl triple.chpl && ./a.out | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** CHAPEL TESTS FAILED ***"
    exit 1
else
    echo
    echo "CHAPEL TESTS PASSED"
fi
