#!/usr/bin/env bash
which coffee &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install CoffeeScript from https://www.coffeescript.org/ >&2
    exit 1
else
    echo anagrams,animals,average_with_splats,chained_existential,circle
    exit 0
fi
