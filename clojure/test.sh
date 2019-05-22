#!/usr/bin/env bash
clojure agent_example.clj && \
clojure anagrams.clj rats | diff ../test/rats_heap_expected - && \
clojure animals_multi.clj rats && \
clojure animals_protocol.clj && \
clojure arithmetic.clj && \
clojure average.clj && \
clojure basic_types.clj && \
clojure count_and_conj.clj && \
clojure division.clj && \
clojure energy.clj && \
clojure fib.clj && \
clojure hints.clj && \
clojure improper_var_use.clj && \
clojure incorrect_factorial.clj && \
clojure infix.clj && \
clojure more_collection_examples.clj && \
clojure mystery.clj && \
clojure namespace_example.clj && \
clojure or.clj && \
clojure overflow.clj && \
clojure persistent_example.clj && \
clojure shape_multi.clj && \
clojure shape_protocol.clj && \
clojure simplest_macro.clj && \
clojure stm.clj && \
clojure sum_of_even_squares.clj && \
clojure thread_locking.clj && \
clojure thread_mess.clj && \
clojure triple.clj | diff ../test/triple_expected - && \
clojure unless.clj && \
clojure varargs.clj && \
clojure vars.clj && \
clojure word_count.clj < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
clojure word_count_slurp.clj < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "***CLOJURE TESTS FAILED ***"
    exit 1
else
    echo
    echo "CLOJURE TESTS PASSED"
fi
