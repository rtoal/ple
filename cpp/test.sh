#!/usr/bin/env bash
g++ -std=c++14 anagrams.cpp && ./a.out rats | diff ../test/rats_heap_expected - && \
g++ -std=c++14 animals.cpp && ./a.out && \
g++ -std=c++14 basic_types.cpp && ./a.out && \
g++ -std=c++14 if_then_else.cpp && ./a.out && \
g++ -std=c++14 maps.cpp && ./a.out && \
g++ -std=c++14 smart_pointers.cpp && ./a.out && \
g++ -std=c++14 sum_of_even_squares.cpp && ./a.out && \
g++ -std=c++14 triple.cpp && ./a.out | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** C++ TESTS FAILED ***"
    exit 1
else
    echo
    echo "C++ TESTS PASSED"
fi
