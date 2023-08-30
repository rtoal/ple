#!/usr/bin/env bash
kotlin hello.kts && \
kotlin permutations.kts I like carrots | diff - ../test/carrots_expected && \
kotlin top_ten_scorers.kts < ../test/wnba_input | diff ../test/wnba_expected - && \
kotlin triple.kts | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** KOTLIN TESTS FAILED ***"
    exit 1
else
    echo
    echo "KOTLIN TESTS PASSED"
fi
