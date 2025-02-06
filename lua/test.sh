#!/usr/bin/env bash
lua anagrams.lua rats | diff ../test/rats_heap_expected - && \
lua and_or_demo.lua && \
lua basic_latin_wordcount.lua < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -  && \
lua binding.lua && \
lua character_counts.lua && \
lua clockhands.lua && \
lua coroutine_demo.lua && \
lua coroutine_wrap_demo.lua && \
lua delegation_example.lua && \
lua errors.lua && \
lua exploring_parameters.lua && \
lua expression_lists.lua && \
lua function_examples.lua && \
lua generator.lua && \
lua locals.lua && \
lua metatable_examples.lua && \
lua more_table_examples.lua && \
lua nested_function_declaration.lua && \
lua nils.lua && \
lua operators.lua && \
lua permutations.lua I like carrots | diff ../test/carrots_expected - && \
lua recursive_fail.lua && \
lua recursive_ok.lua && \
lua references.lua && \
lua shallow.lua && \
lua standard_library.lua && \
lua static_or_dynamic_scope.lua && \
lua string_examples.lua && \
lua strong_and_weak_typing.lua && \
lua table_examples.lua && \
lua top_ten_scorers.lua < ../test/wnba_input | diff ../test/wnba_expected - && \
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
