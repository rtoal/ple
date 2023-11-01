#!/usr/bin/env bash
gcc -std=c2x anagrams.c && ./a.out rats | diff ../test/rats_heap_expected - && \
gcc -std=c2x array_in_struct.c && ./a.out && \
gcc -std=c2x assignment.c && ./a.out && \
gcc -std=c2x cheating_with_pointers.c && ./a.out && \
gcc -std=c2x const.c && ./a.out && \
gcc -std=c2x directives.c && ./a.out && \
gcc -std=c2x -c hashmap.c && \
gcc -std=c2x indexing.c && ./a.out && \
gcc -std=c2x memory.c && ./a.out && \
gcc -std=c2x permutations.c && ./a.out I like carrots | diff - ../test/carrots_expected && \
gcc -std=c2x reinterpret_cast.c && ./a.out && \
gcc -std=c2x simple_macro.c && ./a.out && \
gcc -std=c2x sizeof.c && ./a.out && \
gcc -std=c2x sum_of_even_squares.c && ./a.out && \
gcc -std=c2x sum.c && ./a.out && \
gcc -std=c2x top_ten_scorers.c && ./a.out < ../test/wnba_input | diff ../test/wnba_expected - && \
gcc -std=c2x triple.c && ./a.out | diff ../test/triple_expected - && \
gcc -std=c2x ugly_pointer_arithmetic.c && ./a.out && \
gcc -std=c2x union.c && ./a.out && \
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
