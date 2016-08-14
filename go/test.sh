#!/usr/bin/env bash
go run anagrams.go rats | diff ../test/rats_heap_expected - && \
go test animals_test.go && \
go test arrays_test.go && \
go test base64_error_test.go && \
go test binarytree/binary_tree_test.go binarytree/binary_tree.go  && \
go test channel_sum_test.go && \
go test closed_channel_read_test.go && \
go test compound_statements_test.go && \
go test copy_test.go && \
go run cpu.go && \
go test escape_test.go && \
go test format_specifier_test.go && \
go test functions_test.go && \
go test hello_world_test.go && \
go run interfaces.go && \
go test maps_test.go && \
go test more_functions_test.go && \
go run multiple_hellos.go && \
go test nil_maps_test.go && \
go test pointer_test.go && \
go run primes.go && \
go test recover_test.go && \
go test reflection_types_test.go && \
go build restaurant/*.go && \
go test shapes_test.go && \
go test simple_json_test.go && \
go test simple_types_test.go && \
go test slice_test.go && \
go test structs_test.go
go run triple.go | diff ../test/triple_expected - && \
go run wordcount.go < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** GO TESTS FAILED ***"
    exit 1
else
    echo
    echo "GO TESTS PASSED"
fi
