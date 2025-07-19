#!/usr/bin/env bash
gfortran functions.f90 && ./a.out && \
gfortran ses.f90 && ./a.out && \
gfortran triple.f90 && ./a.out | diff ../test/triple_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** FORTRAN TESTS FAILED ***"
    exit 1
else
    echo
    echo "FORTRAN TESTS PASSED"
fi
