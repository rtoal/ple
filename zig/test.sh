#!/usr/bin/env bash
zig run clockhands.zig && \
zig run coords.zig && \
zig run hello.zig && \
zig run odd_even.zig && \
zig run permutations.zig -- I like carrots | diff ../test/carrots_expected - && \
zig run top_ten_scorers.zig < ../test/wnba_input | diff ../test/wnba_expected - && \
zig run triple.zig | diff ../test/triple_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** ZIG TESTS FAILED ***"
    exit 1
else
    echo
    echo "ZIG TESTS PASSED"
fi
