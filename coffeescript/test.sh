#!/usr/bin/env bash
coffee anagrams.coffee rats | diff ../test/rats_heap_expected - && \
coffee animals.coffee && \
coffee average_with_splats.coffee && \
coffee chained_existential.coffee && \
coffee circle.coffee && \
coffee default_arguments.coffee && \
coffee destructure_examples.coffee && \
coffee distance.coffee && \
coffee existential.coffee && \
coffee explicit_destructure.coffee && \
coffee function_examples.coffee && \
coffee greeter.coffee && \
coffee median_of_three.coffee && \
coffee object_example.coffee && \
coffee object_iteration.coffee && \
coffee scope_fixes.coffee && \
coffee scope_issue.coffee && \
coffee simple_comprehension.coffee && \
coffee string_example.coffee && \
coffee switch_example.coffee && \
coffee this_example.coffee && \
coffee triple.coffee | diff ../test/triple_expected - && \
coffee types_and_type_errors.coffee && \
coffee wordcount.coffee < ../test/wordcount_input | diff ../test/wordcount_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** COFFEESCRIPT TESTS FAILED ***"
    exit 1
else
    echo
    echo "COFFEESCRIPT TESTS PASSED"
fi
