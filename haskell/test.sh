#!/usr/bin/env bash
runhaskell alias.hs && \
runhaskell basics.hs && \
runhaskell clockhands.hs && \
runhaskell custom_operators.hs && \
runhaskell datatype_with_record.hs && \
runhaskell definitions.hs && \
runhaskell double.hs && \
runhaskell greeter.hs <<< "Alice" && \
runhaskell hello.hs && \
runhaskell infix_and_prefix.hs && \
runhaskell is_thirty_four_cases.hs && \
runhaskell is_thirty_four_pattern_matching.hs && \
runhaskell lists.hs && \
runhaskell new_operators.hs && \
runhaskell permutations.hs I like carrots && \
runhaskell primes.hs && \
runhaskell quicksort.hs && \
runhaskell records_test.hs && \
runhaskell response.hs && \
runhaskell sections.hs && \
runhaskell shapes_with_records.hs && \
runhaskell shapes.hs && \
runhaskell strings.hs && \
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
