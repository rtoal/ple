#!/usr/bin/env bash
# ghc another_mystery.hs && \
ghc clockhands.hs && ./clockhands && \
ghc double.hs && ./double && \
ghc hello.hs && ./hello && \
ghc infix_as_prefix.hs && ./infix_as_prefix && \
# ghc mystery.hs && \
ghc permutations.hs && ./permutations one two three && \
ghc primes.hs && ./primes && \
ghc triple.hs && ./triple | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** HASKELL TESTS FAILED ***"
    exit 1
else
    echo
    echo "HASKELL TESTS PASSED"
fi
