#!/usr/bin/env bash
which coffee &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install CoffeeScript from https://www.coffeescript.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount
    exit 0
fi
