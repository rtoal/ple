#!/usr/bin/env bash
perl hello.pl && \
perl primes.pl 100 && \
perl ses.pl && \
perl summer.pl && \
perl triple.pl | diff ../test/triple_expected - && \
perl top_ten_scorers.pl < ../test/wnba_input | diff ../test/wnba_expected - && \
perl twice.pl
perl wordcount.pl < ../test/wordcount_input | diff ../test/wordcount_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** PERL TESTS FAILED ***"
    exit 1
else
    echo
    echo "PERL TESTS PASSED"
fi
