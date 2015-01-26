#!/usr/bin/env bash
which python &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install Python from https://www.python.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount,animals
    exit 0
fi
