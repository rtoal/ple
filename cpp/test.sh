#/usr/bin/env bash
g++ -std=c++11 anagrams.cpp && ./a.out rats | diff ../test/rats_heap_expected - && \
g++ -std=c++11 animals.cpp && ./a.out && \
g++ -std=c++11 sum_of_even_squares.cpp && ./a.out && \
g++ -std=c++11 triple.cpp && ./a.out | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** C++ TESTS FAILED ***"
    exit 1
else
    echo
    echo "C++ TESTS PASSED"
fi
