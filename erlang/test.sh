#!/usr/bin/env bash
escript anagrams.erl rats | diff ../test/rats_recursive_expected - && \
escript bifs.erl && \
escript catches.erl && \
escript clockhands.erl | diff ../test/clockhands_expected - && \
erlc counter.erl && erlc cook.erl && erlc customer.erl && erlc order_pool.erl && \
escript countdown.erl && \
escript destructure.erl && \
escript factorial.erl && \
escript guard_examples.erl && \
escript hello.erl && \
escript if_and_case.erl && \
escript more_matching.erl && \
escript non_streaming_triple.erl | diff ../test/triple_expected - && \
erlc prime_checker.erl && erlc printer.erl && escript primes.erl && \
escript sweeper.erl && \
escript triple.erl | diff ../test/triple_expected - && \
escript types.erl && \
erlc vectors.erl && escript test_vectors.erl && \
escript wordcount.erl < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** ERLANG TESTS FAILED ***"
    exit 1
else
    echo
    echo "ERLANG TESTS PASSED"
fi
