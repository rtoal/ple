#!/usr/bin/env bash
godot -s hello_world.gd && \
godot -s triple.gd | diff ../test/triple_expected - && \


if [ $? -ne 0 ]; then
    echo
    echo "*** GDSCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "GDSCRIPT TESTS PASSED"
fi
