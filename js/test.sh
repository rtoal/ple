#!/usr/bin/env bash
node anagrams.js rats | diff ../test/rats_heap_expected - && \
node bad_constructor.js && \
node binding.js && \
node circle.js && \
node circle_with_class.js && \
node circles_with_object_create.js && \
node emoji_character_count_sad.js && \
node exploring_parameters.js && \
node for_loops.js && \
node function_examples.js && \
node generator.js && \
node method_example.js && \
node method_example_short_syntax.js && \
node parameters.js && \
node permutations.mjs one two three && \
node primitives_and_references.js && \
node promise_demo.js && \
node reference_error.js && \
node scopes_and_var.js && \
node shallow.js && \
node simple_scopes.js && \
node static_or_dynamic_scope.js && \
node this_examples.js && \
node top_ten_scorers.mjs < ../test/players_input | diff ../test/players_expected - && \
node triple.mjs | diff ../test/triple_expected - && \
node wordcount.mjs < ../test/wordcount_input | diff ../test/wordcount_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** JAVASCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "JAVASCRIPT TESTS PASSED"
fi
