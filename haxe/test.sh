#!/usr/bin/env bash
haxe -main ClockHands --interp | diff ../test/triple_expected - && \
haxe -main HelloWorld --interp && \
haxe -main Triple --interp && \
haxe -main TypeDef --interp 

if [ $? -ne 0 ]; then
    echo
    echo "*** HAXE TESTS FAILED ***"
    exit 1
else
    echo
    echo "HAXE TESTS PASSED"
fi
