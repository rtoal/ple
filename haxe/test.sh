#!/usr/bin/env bash
haxe --run Anagrams rats | diff ../test/rats_heap_expected - && \
haxe --run Animals && \
haxe --run Blocks && \
haxe --run Casting && \
haxe --run ClockHands | diff ../test/clockhands_expected - && \
haxe --run ClockHandsDateTools | diff ../test/clockhands_expected - && \
haxe --run ClockHandsPadding | diff ../test/clockhands_expected - && \
haxe ConditionalCompilations.hxml && \
haxe --run Copy && \
haxe --run DefaultArgs && \
haxe --run DefaultType && \
haxe --run DynamicAccess && \
haxe --run DynamicTypes && \
haxe --run Fibonacci && \
haxe --run FunctionArguments && \
haxe --run HelloWorld && \
haxe --run Immutability && \
haxe InlineTests.hxml && \
haxe --run Leniency && \
haxe --run Monomorph && \
haxe --run NullType && \
haxe --run OptionEnum && \
haxe --run Permutations I like carrots | diff ../test/carrots_expected - && \
haxe --run SumOfEvenSquares && \
haxe --run TemplateJokes && \
haxe --run TopTenScorers < ../test/wnba_input | diff ../test/wnba_expected - && \
haxe --run Triple | diff ../test/triple_expected - && \
haxe --run TypeDef && \
haxe --run WordCount < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
haxe --run WordCount < ../test/wordcount_input | diff ../test/wordcount_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** HAXE TESTS FAILED ***"
    exit 1
else
    echo
    echo "HAXE TESTS PASSED"
fi
