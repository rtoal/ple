#!/usr/bin/env bash
# tsc --strict animals.ts && node animals.js && \
tsc --strict alias.ts && node alias.js && \
tsc --strict bad_any.ts && node bad_any.js && \
tsc --strict top_ten_scorers.ts && node top_ten_scorers.js < ../test/wnba_input | diff ../test/wnba_expected - && \
tsc --strict triple.ts && node triple.js | diff ../test/triple_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** TYPESCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "TYPESCRIPT TESTS PASSED"
fi
