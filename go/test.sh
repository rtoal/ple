go run triple.go && \
go run anagrams.go rats && \
go run wordcount.go < ../test/word_count_input && \
go test animals_test.go && \
go test arrays_test.go && \
go test binarytree/binary_tree_test.go binarytree/binary_tree.go  && \
go test channel_sum_test.go && \
go test compound_statements_test.go && \
go test copy_test.go && \
go run cpu.go && \
go test escape_test.go && \
go test functions_test.go && \
go test hello_world_test.go && \
go run primes.go && \
go test nil_maps_test.go && \
go test pointer_test.go && \
go test recover_test.go && \
go build restaurant/*.go && \
go test shapes_test.go && \
go test simple_types_test.go && \
go test slice_test.go && \
go test structs_test.go

if [ $? -ne 0 ]; then
    echo
    echo "*** THE TEST SUITE FOR GO FAILED ***"
    exit 1
else
    echo
    echo "GO TESTS PASS"
fi
