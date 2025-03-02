#!/usr/bin/env bash
gawk -f clockhands_time.awk && \
gawk -f clockhands.awk && \
echo 'last first email' | gawk -f email_list.awk && \
gawk -f permutations.awk I like carrots | diff ../test/carrots_expected - && \
gawk -f triple.awk | diff ../test/triple_expected - && \
gawk -f wordcount.awk < ../test/wordcount_ascii_input | sort | diff ../test/wordcount_ascii_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** AWK TESTS FAILED ***"
    exit 1
else
    echo
    echo "AWK TESTS PASSED"
fi
