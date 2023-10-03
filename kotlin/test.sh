#!/usr/bin/env bash
kotlin animals.kts && \
kotlin closures.kts && \
kotlin codepoints.kts && \
kotlin companions.kts && \
kotlin conditionals.kts && \
kotlin coroutines.kts && \
kotlin -J-ea dataclasses.kts && \
kotlin extensions.kts && \
kotlin functions.kts && \
kotlin hello.kts && \
kotlin null_safety.kts && \
kotlin overloading.kts && \
kotlin permutations.kts I like carrots | diff - ../test/carrots_expected && \
kotlin sealed.kts && \
kotlin shapes.kts && \
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
