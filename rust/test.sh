#/usr/bin/env bash

# The Rust directory is highly experimental. It needs to be cleaned up badly.

rustc anagrams.rs && ./anagrams rats | diff ../test/rats_heap_expected - && \
rustc animals.rs && ./animals && \
rustc binding.rs && ./binding && \
rustc borrow_fixed.rs && ./borrow_fixed && \
rustc circle.rs && ./circle && \
rustc safe_string_sort.rs && ./safe_string_sort && \
rustc static_or_dynamic_scope.rs && ./static_or_dynamic_scope && \
rustc triple.rs | ./triple | diff ../test/triple_expected - && \
rustc wordcount.rs && ./wordcount < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** RUST TESTS FAILED ***"
    exit 1
else
    echo
    echo "RUST TESTS PASSED"
fi
