#!/usr/bin/env bash
lua anagrams.lua rats | diff ../test/rats_heap_expected - && \
lua and_or_demo.lua && \
lua basic_latin_wordcount.lua < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -  && \
lua basic_lua_examples.lua && \
lua coroutine_demo.lua && \
lua delegation_example.lua && \
lua errors.lua && \
lua expression_lists.lua && \
lua locals.lua && \
lua metatable_examples.lua && \
lua more_table_examples.lua && \
lua nested_function_declaration.lua && \
lua recursive_fail.lua && \
lua references.lua && \
lua shallow.lua && \
lua standard_library.lua && \
lua table_examples.lua && \
lua top_ten_scorers.lua < ../test/players_input | diff ../test/players_expected - && \
lua triple.lua | diff ../test/triple_expected - && \
lua types.lua && \
lua vectors.lua && \
lua x_is_x.lua

if [ $? -ne 0 ]; then
    echo
    echo "*** LUA TESTS FAILED ***"
    exit 1
else
    echo
    echo "LUA TESTS PASSED"
fi
