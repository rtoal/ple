#!/usr/bin/env bash
gcc -std=c2x anagrams.c && ./a.out rats | diff ../test/rats_heap_expected - && \
gcc -std=c2x -c hashmap.c && \
gcc -std=c2x sum_of_even_squares.c && ./a.out && \
gcc -std=c2x triple.c && ./a.out | diff ../test/triple_expected - && \
gcc -std=c2x wordcount.c && ./a.out < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
gcc -std=c2x x_is_x.c && ./a.out

if [ $? -ne 0 ]; then
    echo
    echo "*** C TESTS FAILED ***"
    exit 1
else
    echo
    echo "C TESTS PASSED"
fi
