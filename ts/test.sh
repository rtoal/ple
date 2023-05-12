#!/usr/bin/env bash
tsc && \
cd dist && \
node alias.js && \
node object_types.js && \
node bad_any.js && \
node top_ten_scorers.js < ../../test/wnba_input | diff ../../test/wnba_expected - && \
node triple.js | diff ../../test/triple_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** TYPESCRIPT TESTS FAILED ***"
    cd ..
    exit 1
else
    echo
    echo "TYPESCRIPT TESTS PASSED"
    cd ..
fi
