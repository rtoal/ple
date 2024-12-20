#!/usr/bin/env bash
lci clockhands.lol | diff ../test/clockhands_expected - && \
lci concatenation.lol && \
lci fibonacci.lol && \
lci hello_world.lol && \
lci triple.lol | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** LOLCODE TESTS FAILED ***"
    exit 1
else
    echo
    echo "LOLCODE TESTS PASSED"
fi
