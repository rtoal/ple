#!/usr/bin/env bash
idris2 hello.idr -o hello && ./build/exec/hello

if [ $? -ne 0 ]; then
    echo
    echo "*** IDRIS TESTS FAILED ***"
    exit 1
else
    echo
    echo "IDRIS TESTS PASSED"
fi
