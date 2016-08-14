#!/usr/bin/env bash
clj agent_example.clj && \
clj anagrams.clj rats | diff ../test/rats_heap_expected - && \
clj animals_multi.clj rats && \
clj animals_protocol.clj && \
clj arithmetic.clj && \
clj average.clj && \
clj basic_types.clj && \
clj count_and_conj.clj && \
clj division.clj && \
clj energy.clj && \
clj fib.clj && \
clj hints.clj && \
clj improper_var_use.clj && \
clj incorrect_factorial.clj && \
clj infix.clj && \
clj more_collection_examples.clj && \
clj mystery.clj && \
clj namespace_example.clj && \
clj or.clj && \
clj overflow.clj && \
clj persistent_example.clj && \
clj shape_multi.clj && \
clj shape_protocol.clj && \
clj simplest_macro.clj && \
clj stm.clj && \
clj sum_of_even_squares.clj && \
clj thread_locking.clj && \
clj thread_mess.clj && \
clj triple.clj | diff ../test/triple_expected - && \
clj unless.clj && \
clj varargs.clj && \
clj vars.clj && \
clj word_count.clj < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
clj word_count_slurp.clj < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "***CLOJURE TESTS FAILED ***"
    exit 1
else
    echo
    echo "CLOJURE TESTS PASSED"
fi
