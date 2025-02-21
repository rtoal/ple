#!/usr/bin/env bash
node animals.js && \
node arrays_and_objects.js && \
node bad_constructor.js && \
node binding.js && \
node bracket.js && \
node circle_with_class.js && \
node circle_with_object_create.js && \
node circle.js && \
node default_arguments.js && \
node destructure_examples.js && \
node emoji_character_count_sad.js && \
node exploring_parameters.js && \
node for_loops.js && \
node for_of_examples.js && \
node function_examples.js && \
node generator.js && \
node iterators.js && \
node jsfuck.js && \
node method_example_short_syntax.js && \
node method_example.js && \
node more_destructuring.js && \
node numbers.js && \
node object_pattern_as_parameter.js && \
node parameters.js && \
node permutations.js I like carrots | diff ../test/carrots_expected - && \
node primitives_and_references.js && \
node promise_demo.js && \
node reference_error.js && \
node references.js && \
node scopes_and_var.js && \
node shallow.js && \
node simple_scopes.js && \
node static_or_dynamic_scope.js && \
node strings.js && \
node supervisor.js && \
node this_examples.js && \
node top_ten_scorers.js < ../test/wnba_input | diff ../test/wnba_expected - && \
node triple.js | diff ../test/triple_expected - && \
node types_and_type_errors.js && \
node queues.js && \
node without_optional_chaining.js && \
node wordcount-callback.js ../test/wordcount_input | diff ../test/wordcount_expected -
node wordcount.js < ../test/wordcount_input | diff ../test/wordcount_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** JAVASCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "JAVASCRIPT TESTS PASSED"
fi
