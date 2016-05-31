#!/usr/bin/env bash
scala anagrams.scala rats | diff ../test/rats_heap_expected - && \
scala animals.scala && \
scala triple.scala | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** SCALA TESTS FAILED ***"
    exit 1
else
    echo
    echo "SCALA TESTS PASSED"
fi
