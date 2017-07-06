#!/usr/bin/env bash
elm make alias.elm && \
elm make anagramapp.elm && \
elm make anagrams_test.elm --output tests.js && node tests.js && \
elm make animals.elm --output tests.js && node tests.js && \
elm make another_mystery.elm && \
elm make chained_maybes.elm --output tests.js && node tests.js && \
elm make countdown.elm && \
elm make double.elm --output tests.js && node tests.js && \
elm make exp_test.elm --output tests.js && node tests.js && \
elm make infix_as_prefix.elm --output tests.js && node tests.js && \
elm make little_language.elm --output tests.js && node tests.js && \
elm make logo_tracker.elm && \
elm make mouse_tracker.elm && \
elm make mystery.elm && \
elm make new_operators.elm --output tests.js && node tests.js && \
elm make record_extension.elm --output tests.js && node tests.js && \
elm make records.elm --output tests.js && node tests.js && \
elm make response.elm --output tests.js && node tests.js && \
elm make shape_test.elm --output tests.js && node tests.js && \
elm make tree.elm --output tests.js && node tests.js && \
elm make triple.elm && \
elm make tuple_examples.elm --output tests.js && node tests.js && \
elm make union_and_record.elm && \
elm make wordcount.elm
# TODO test triple and wordcount against expected results

if [ $? -ne 0 ]; then
    echo
    echo "*** ELM TESTS FAILED ***"
    exit 1
else
    echo
    echo "ELM TESTS PASSED"
fi
