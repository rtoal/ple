#!/usr/bin/env bash
gfortran collatz.f95 && ./a.out

if [ $? -ne 0 ]; then
    echo
    echo "*** FORTRAN TESTS FAILED ***"
    exit 1
else
    echo
    echo "FORTRAN TESTS PASSED"
fi
