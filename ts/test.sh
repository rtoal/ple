#!/usr/bin/env bash
tsc && \
cd dist && \
node alias.js && \
node animals.js && \
node assertion_functions.js && \
node bad_any.js && \
node bracket.js && \
node classes.js && \
node compose.js && \
node destructuring.js && \
node index_signatures.js && \
node narrow.js && \
node object_types.js && \
node optionals.js && \
node permutations.js I like carrots | diff ../../test/carrots_expected - && \
node queue.js && \
node satisfies.js && \
node shapes.js && \
node top_ten_scorers.js < ../../test/wnba_input | diff ../../test/wnba_expected - && \
node triple.js | diff ../../test/triple_expected - && \
node type_assertions.js && \
node type_predicates.js && \
node utility_types.js && \

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
