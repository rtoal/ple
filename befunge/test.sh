#!/usr/bin/env bash
echo 10 > /tmp/befunge_input
bef -r /tmp/befunge_input -w /tmp/befunge_output factorial.bf | diff --ignore-all-space <(printf "3628800") /tmp/befunge_output
echo 5 > /tmp/befunge_input
bef -r /tmp/befunge_input -w /tmp/befunge_output factorial.bf | diff --ignore-all-space <(printf "120") /tmp/befunge_output
echo 1 > /tmp/befunge_input
bef -r /tmp/befunge_input -w /tmp/befunge_output factorial.bf | diff --ignore-all-space <(printf "1") /tmp/befunge_output

if [ $? -ne 0 ]; then
    echo
    echo "*** BEFUNGE TESTS FAILED ***"
    exit 1
else
    echo
    echo "BEFUNGE TESTS PASSED"
fi
