#!/usr/bin/env bash
ruby access.rb && \
ruby anagrams_heap.rb rats | diff ../test/rats_heap_expected - && \
ruby anagrams.rb rats && \
ruby animals.rb && \
ruby block_scope.rb && \
ruby block_shorthand.rb && \
ruby block_with_no_parameters.rb && \
ruby block_with_parameters.rb && \
ruby blocks_and_scope_experiments.rb && \
ruby circle.rb && \
ruby class_definition.rb && \
ruby class_new_example.rb && \
ruby common_class_summary.rb && \
ruby globals.rb && \
ruby make_enum.rb && \
ruby mixin_example.rb && \
ruby multi.rb && \
ruby multiple_mixins.rb && \
ruby non_encapsulated_point.rb && \
ruby object_and_class_examples.rb && \
ruby one_two_three.rb && \
ruby open_classes.rb && \
ruby parameter_examples.rb && \
ruby powers_of_two.rb && \
ruby private_object_methods.rb && \
ruby proc_and_lambda_return.rb && \
ruby procs_and_lambdas.rb && \
ruby simple_messaging.rb && \
ruby singleton_example.rb && \
ruby sum_of_even_squares.rb && \
ruby triple.rb | diff ../test/triple_expected - && \
ruby unityping.rb && \
ruby wordcount.rb < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** RUBY TESTS FAILED ***"
    exit 1
else
    echo
    echo "RUBY TESTS PASSED"
fi
