#!/usr/bin/env bash
perl primes.pl 100 && \
perl summer.pl && \
perl triple.pl | diff ../test/triple_expected - && \
perl twice.pl

if [ $? -ne 0 ]; then
    echo
    echo "*** PERL TESTS FAILED ***"
    exit 1
else
    echo
    echo "PERL TESTS PASSED"
fi
