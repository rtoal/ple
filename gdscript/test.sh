#!/usr/bin/env bash
godot --display-driver headless -s anagrams.gd | dif - ../test/rats_heap_expected && \
godot --display-driver headless -s file_reader.gd ../test/carrots_expected | diff ../test/carrots_expected && \
godot --display-driver headless -s fibonacci.gd && \
godot --display-driver headless -s hello_world.gd && \
godot --display-driver headless -s permutations.gd I like carrots | diff - ../test/carrots_expected && \
godot --display-driver headless -s sum_of_even_squares && \
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
