#!/usr/bin/env bash
clojure -M agent_example.clj && \
clojure -M anagrams.clj rats | diff ../test/rats_heap_expected - && \
clojure -M animals_multi.clj rats && \
clojure -M animals_protocol.clj && \
clojure -M arithmetic.clj && \
clojure -M average.clj && \
clojure -M basic_types.clj && \
clojure -M count_and_conj.clj && \
clojure -M division.clj && \
clojure -M energy.clj && \
clojure -M fib.clj && \
clojure -M hints.clj && \
clojure -M improper_var_use.clj && \
clojure -M incorrect_factorial.clj && \
clojure -M infix.clj && \
clojure -M more_collection_examples.clj && \
clojure -M mystery.clj && \
clojure -M namespace_example.clj && \
clojure -M or.clj && \
clojure -M overflow.clj && \
clojure -M persistent_example.clj && \
clojure -M shape_multi.clj && \
clojure -M shape_protocol.clj && \
clojure -M simplest_macro.clj && \
clojure -M stm.clj && \
clojure -M sum_of_even_squares.clj && \
clojure -M thread_locking.clj && \
clojure -M thread_mess.clj && \
clojure -M triple.clj | diff ../test/triple_expected - && \
clojure -M unless.clj && \
clojure -M varargs.clj && \
clojure -M vars.clj && \
clojure -M word_count.clj < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
clojure -M word_count_slurp.clj < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "***CLOJURE TESTS FAILED ***"
    exit 1
else
    echo
    echo "CLOJURE TESTS PASSED"
fi
