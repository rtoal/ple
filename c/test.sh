#/usr/bin/env bash
gcc -std=c11 anagrams.c && ./a.out rats | diff ../test/rats_heap_expected - && \
gcc -std=c11 sum_of_even_squares.c && ./a.out && \
gcc -std=c11 triple.c && ./a.out | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** C TESTS FAILED ***"
    exit 1
else
    echo
    echo "C TESTS PASSED"
fi
