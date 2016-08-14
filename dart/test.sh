#!/usr/bin/env bash
dart anagrams.dart rats | diff ../test/rats_heap_expected - && \
dart animals.dart && \
dart binding.dart && \
dart circle.dart && \
dart exploring_parameters.dart && \
dart function_examples.dart && \
dart generator.dart && \
dart method_example.dart && \
dart primitives_and_references.dart && \
dart scopes_and_var.dart && \
dart static_or_dynamic_scope.dart && \
dart triple.dart | diff ../test/triple_expected - && \
dart unique_string_demo.dart && \
dart wordcount.dart < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** DART TESTS FAILED ***"
    exit 1
else
    echo
    echo "DART TESTS PASSED"
fi
