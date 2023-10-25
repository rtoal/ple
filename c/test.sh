#!/usr/bin/env bash
gcc -std=c2x anagrams.c && ./a.out rats | diff ../test/rats_heap_expected - && \
gcc -std=c2x -c array_in_struct.c && \
gcc -std=c2x -c assignment.c && \
gcc -std=c2x -c const.c && \
gcc -std=c2x -c directives.c && \
gcc -std=c2x -c hashmap.c && \
gcc -std=c2x -c memory.c && \
gcc -std=c2x permutations.c && ./a.out I like carrots | diff - ../test/carrots_expected && \
gcc -std=c2x -c reinterpret_cast.c && \
gcc -std=c2x -c simple_macro.c && \
gcc -std=c2x -c sizeof.c && \
gcc -std=c2x sum_of_even_squares.c && ./a.out && \
gcc -std=c2x top_ten_scorers.c && ./a.out < ../test/wnba_input | diff ../test/wnba_expected - && \
gcc -std=c2x triple.c && ./a.out | diff ../test/triple_expected - && \
gcc -std=c2x -c ugly_pointer_arithmetic.c && \
gcc -std=c2x -c union.c && \
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
