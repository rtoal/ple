#!/usr/bin/env bash
which julia &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install Julia from http://julialang.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount
    exit 0
fi
