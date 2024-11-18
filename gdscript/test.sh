#!/usr/bin/env bash
godot --display-driver headless --no-header -s anagrams.gd | dif - ../test/rats_heap_expected && \
godot --display-driver headless --no-header -s file_reader.gd ../test/carrots_expected | diff ../test/carrots_expected && \
godot --display-driver headless --no-header -s fibonacci.gd && \
godot --display-driver headless --no-header -s hello_world.gd && \
godot --display-driver headless --no-header -s permutations.gd I like carrots | diff - ../test/carrots_expected && \
godot --display-driver headless --no-header -s static_variables.gd && \
godot --display-driver headless --no-header -s sum_of_even_squares.gd && \
godot --display-driver headless --no-header -s triple.gd | diff ../test/triple_expected - && \
godot --display-driver headless --no-header -s vectors.gd && \

if [ $? -ne 0 ]; then
    echo
    echo "*** GDSCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "GDSCRIPT TESTS PASSED"
fi
