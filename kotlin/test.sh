#!/usr/bin/env bash
kotlin -J-ea animals.kts && \
kotlin -J-ea binary_tree.kts && \
kotlin circle.kts && \
kotlin codepoints.kts && \
kotlin collections.kts && \
kotlin companions.kts && \
kotlin conditionals.kts && \
kotlin coroutines.kts && \
kotlin -J-ea dataclasses.kts && \
kotlin extensions.kts && \
kotlin functions.kts && \
kotlin hello.kts && \
kotlin -J-ea hof.kts && \
kotlin -J-ea infix.kts && \
kotlin -J-ea null_safety.kts && \
kotlin -J-ea objects.kts && \
kotlin overloading.kts && \
kotlin permutations.kts I like carrots | diff - ../test/carrots_expected && \
kotlin sealed.kts && \
kotlin shapes.kts && \
kotlin top_ten_scorers.kts < ../test/wnba_input | diff ../test/wnba_expected - && \
kotlin -J-ea trailing.kts && \
kotlin triple.kts | diff ../test/triple_expected -
kotlin -J-ea unit_and_nothing.kts && \
kotlin -J-ea user.kts && \
kotlin -J-ea variables.kts && \
kotlin -J-ea vectors.kts && \

if [ $? -ne 0 ]; then
    echo
    echo "*** KOTLIN TESTS FAILED ***"
    exit 1
else
    echo
    echo "KOTLIN TESTS PASSED"
fi
