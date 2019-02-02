#!/usr/bin/env bash
chpl hello.chpl && ./hello && \
chpl sum_of_even_squares.chpl && ./sum_of_even_squares && \
chpl triple.chpl && ./triple | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** CHAPEL TESTS FAILED ***"
    exit 1
else
    echo
    echo "CHAPEL TESTS PASSED"
fi
