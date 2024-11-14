#!/usr/bin/env bash
godot --display-driver headless -s hello_world.gd && \
godot --display-driver headless -s triple.gd | diff ../test/triple_expected - && \
godot --display-driver headless -s vectors.gd && \

if [ $? -ne 0 ]; then
    echo
    echo "*** GDSCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "GDSCRIPT TESTS PASSED"
fi
