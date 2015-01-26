#!/usr/bin/env bash
which lua &> /dev/null
if [[ $? -ne 0 ]]; then
    echo Install Lua from http://lua.org/ >&2
    exit 1
else
    echo anagrams,triple,wordcount
    exit 0
fi
