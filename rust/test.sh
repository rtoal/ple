#!/usr/bin/env bash
cargo build && \
target/debug/anagrams rats | diff ../test/rats_heap_expected - && \
target/debug/anagrams_lifetimes rats | diff ../test/rats_heap_expected - && \
target/debug/animals && \
target/debug/animals_improved_deriving && \
target/debug/animals_improved_generics && \
target/debug/animals_improved_oo && \
target/debug/animals_improved_overload && \
target/debug/binding && \
target/debug/borrow_fixed && \
target/debug/circle_new && \
target/debug/move && \
target/debug/safe_string_sort && \
target/debug/static_or_dynamic_scope && \
target/debug/triple | diff ../test/triple_expected - && \
target/debug/unsafe_string_sort && \
target/debug/wordcount < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** RUST TESTS FAILED ***"
    exit 1
else
    echo
    echo "RUST TESTS PASSED"
fi
