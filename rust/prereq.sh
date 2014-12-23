#!/usr/bin/env bash
which rustc &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install rust from https://www.rust-lang.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount
    exit 0
fi
