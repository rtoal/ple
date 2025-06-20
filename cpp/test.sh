#!/usr/bin/env bash
g++ -std=c++20 anagrams.cpp && ./a.out rats | diff ../test/rats_heap_expected - && \
g++ -std=c++20 animals.cpp && ./a.out && \
g++ -std=c++20 basic_types.cpp && ./a.out && \
g++ -std=c++20 clockhands.cpp && ./a.out | diff ../test/clockhands_expected - && \
g++ -std=c++20 if_then_else.cpp && ./a.out && \
g++ -std=c++20 maps.cpp && ./a.out && \
g++ -std=c++20 permutations.cpp && ./a.out I like carrots | diff ../test/carrots_expected - && \
g++ -std=c++20 smart_pointers.cpp && ./a.out && \
g++ -std=c++20 sum_of_even_squares.cpp && ./a.out && \
g++ -std=c++20 top_ten_scorers.cpp && ./a.out < ../test/wnba_input | diff ../test/wnba_expected - && \
g++ -std=c++20 triple.cpp && ./a.out | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** C++ TESTS FAILED ***"
    exit 1
else
    echo
    echo "C++ TESTS PASSED"
fi
