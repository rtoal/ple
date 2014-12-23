#!/usr/bin/env bash
which dart &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install dart from https://www.dartlang.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount
    exit 0
fi
