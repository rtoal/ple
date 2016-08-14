#!/usr/bin/env bash
swift anagrams.swift rats | diff ../test/rats_heap_expected - && \
swift animals.swift && \
swift array_and_function_chaining.swift && \
swift array_example.swift && \
swift binary_tree.swift && \
swift chaining.swift && \
swift circle.swift && \
swift classes_passed_by_reference.swift && \
swift closure_expressions.swift && \
swift closure_styles.swift && \
swift coalesce.swift && \
swift custom_operator_example.swift && \
swift dictionary_example.swift && \
swift external_names.swift && \
swift generic_pair_example.swift && \
swift int_extensions.swift && \
swift let_contents_immutable.swift && \
swift median.swift && \
swift overflow.swift && \
swift raw_values.swift && \
swift ses.swift && \
swift set_example.swift && \
swift shape_extensions.swift && \
swift simple_protocol.swift && \
swift smart_strings.swift && \
swift string_counting.swift && \
swift string_to_int.swift && \
swift structs_are_copied.swift && \
swift sum_of_even_squares.swift && \
swift throw.swift && \
swift throw_turned_to_nil.swift && \
swift token.swift && \
swift triple.swift | diff ../test/triple_expected - && \
swift trivial_arc_example.swift && \
swift value_vs_reference.swift && \
swift vectors.swift && \
swift wordcount.swift < ../test/wordcount_input | diff ../test/word_and_number_count_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** SWIFT TESTS FAILED ***"
    exit 1
else
    echo
    echo "SWIFT TESTS PASSED"
fi
