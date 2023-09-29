#!/usr/bin/env bash
cargo build && \
target/debug/already_moved && \
target/debug/bigint && \
target/debug/binding && \
target/debug/borrow && \
target/debug/circle_example && \
target/debug/closure && \
target/debug/generator && \
target/debug/hello_world && \
target/debug/lifetimes && \
target/debug/open_rectangle && \
target/debug/permutations I like carrots | diff ../test/carrots_expected - && \
target/debug/rectangle && \
target/debug/safe_string_sort && \
target/debug/slices && \
target/debug/static_or_dynamic_scope && \
target/debug/strings && \
target/debug/top_ten_scorers < ../test/wnba_input | diff ../test/wnba_expected - && \
target/debug/triple | diff ../test/triple_expected - && \
target/debug/turbofish && \
target/debug/type_study && \
target/debug/unsafe_string_sort && \

if [ $? -ne 0 ]; then
    echo
    echo "*** RUST TESTS FAILED ***"
    exit 1
else
    echo
    echo "RUST TESTS PASSED"
fi
