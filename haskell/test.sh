#!/usr/bin/env bash
# ghc another_mystery.hs && \
runhaskell clockhands.hs && \
runhaskell double.hs && \
runhaskell hello.hs && \
runhaskell infix_and_prefix.hs && \
# runhaskell mystery.hs && \
runhaskell permutations.hs I like carrots && \
runhaskell primes.hs&& \
runhaskell triple.hs | diff ../test/triple_expected - && \
runhaskell top_ten_scorers.hs < ../test/wnba_input | diff ../test/wnba_expected -


if [ $? -ne 0 ]; then
    echo
    echo "*** HASKELL TESTS FAILED ***"
    exit 1
else
    echo
    echo "HASKELL TESTS PASSED"
fi
