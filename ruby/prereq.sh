#!/usr/bin/env bash
which ruby &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install Ruby from https://www.ruby-lang.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount,animals
    exit 0
fi
