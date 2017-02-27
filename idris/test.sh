#!/usr/bin/env bash
idris hello.idr -o a.out && ./a.out

if [ $? -ne 0 ]; then
    echo
    echo "*** IDRIS TESTS FAILED ***"
    exit 1
else
    echo
    echo "IDRIS TESTS PASSED"
fi
