#!/usr/bin/env bash
node anagrams.js rats | diff ../test/rats_heap_expected - && \
node animals.mjs && \
node arrays_and_objects.mjs && \
node bad_constructor.mjs && \
node binding.js && \
node circle_with_class.mjs && \
node circle_with_object_create.mjs && \
node circle.mjs && \
node emoji_character_count_sad.mjs && \
node exploring_parameters.mjs && \
node for_loops.mjs && \
node function_examples.mjs && \
node generator.mjs && \
node method_example.mjs && \
node method_example_short_syntax.mjs && \
node parameters.mjs && \
node permutations.mjs I like carrots | diff ../test/carrots_expected - && \
node primitives_and_references.js && \
node promise_demo.mjs && \
node reference_error.mjs && \
node scopes_and_var.mjs && \
node shallow.mjs && \
node simple_scopes.mjs && \
node static_or_dynamic_scope.mjs && \
node supervisor.mjs && \
node this_examples.mjs && \
node top_ten_scorers.mjs < ../test/players_input | diff ../test/players_expected - && \
node triple.mjs | diff ../test/triple_expected - && \
node types_and_type_errors.mjs && \
node without_optional_chaining.mjs && \
node wordcount.mjs < ../test/wordcount_input | diff ../test/wordcount_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** JAVASCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "JAVASCRIPT TESTS PASSED"
fi
