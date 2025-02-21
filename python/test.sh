#!/usr/bin/env bash
python3 anagrams.py rats | diff ../test/rats_heap_expected - && \
python3 anagrams_itertools.py rats && \
python3 animals.py && \
python3 basic_iterables.py && \
python3 clockhands.py | diff ../test/clockhands_expected - && \
python3 custom_iterable.py && \
python3 custom_type.py && \
python3 early_declaration_error.py && \
python3 -m py_compile genexp.py && \
python3 inheritance.py && \
python3 kwargs_examples.py && \
python3 log_decorator_example.py && \
python3 memoized_fibonacci.py && \
python3 mi.py && \
python3 monkey_patching.py && \
python3 object_pool.py && \
python3 permutations.py I like carrots | diff - ../test/carrots_expected && \
python3 powers_of_two.py && \
python3 powers_of_two_infinite.py && \
python3 proxy.py && \
python3 scope.py && \
python3 simple_keyword_arguments.py && \
python3 simple_types.py && \
python3 sum_of_even_squares.py && \
python3 top_ten_scorers.py < ../test/wnba_input | diff ../test/wnba_expected - && \
python3 triple_comprehensions.py && \
python3 triple.py | diff ../test/triple_expected - && \
python3 types_are_types.py && \
python3 varargs.py && \
python3 vectors.py && \
python3 wordcount.py < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** PYTHON TESTS FAILED ***"
    exit 1
else
    echo
    echo "PYTHON TESTS PASSED"
fi
