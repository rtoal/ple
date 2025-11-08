#!/usr/bin/env bash
gcc -std=c23 anagrams.c && ./a.out rats | diff ../test/rats_heap_expected - && \
gcc -std=c23 array_in_struct.c && ./a.out && \
gcc -std=c23 assignment.c && ./a.out && \
gcc -std=c23 cheating_with_pointers.c && ./a.out && \
gcc -std=c23 const.c && ./a.out && \
gcc -std=c23 directives.c && ./a.out && \
gcc -std=c23 -c hashmap.c && \
gcc -std=c23 indexing.c && ./a.out && \
gcc -std=c23 memory.c && ./a.out && \
gcc -std=c23 permutations.c && ./a.out I like carrots | diff - ../test/carrots_expected && \
gcc -std=c23 reinterpret_cast.c && ./a.out && \
gcc -std=c23 simple_macro.c && ./a.out && \
gcc -std=c23 sizeof.c && ./a.out && \
gcc -std=c23 sum_of_even_squares.c && ./a.out && \
gcc -std=c23 sum.c && ./a.out && \
gcc -std=c23 top_ten_scorers.c && ./a.out < ../test/wnba_input | diff ../test/wnba_expected - && \
gcc -std=c23 triple.c && ./a.out | diff ../test/triple_expected - && \
gcc -std=c23 ugly_pointer_arithmetic.c && ./a.out && \
gcc -std=c23 union.c && ./a.out && \
gcc -std=c23 wordcount.c && ./a.out < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
gcc -std=c23 x_is_x.c && ./a.out

if [ $? -ne 0 ]; then
    echo
    echo "*** C TESTS FAILED ***"
    exit 1
else
    echo
    echo "C TESTS PASSED"
fi
