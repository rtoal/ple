#!/usr/bin/env bash
julia -e 'Pkg.add("Primes")' && \
julia abstract_types.jl && \
julia all_types.jl && \
julia anagrams.jl rats | diff ../test/rats_heap_expected - && \
julia animals.jl && \
julia annotations.jl && \
julia array_ops.jl && \
julia array_slicing.jl && \
julia concrete_types.jl && \
julia css.jl && \
julia eval_and_scope.jl && \
julia exprs.jl && \
julia fib.jl && \
julia function_definitions.jl && \
julia global.jl && \
julia hygiene_example.jl && \
julia invariance.jl && \
julia isa.jl && \
julia kwargs.jl && \
julia log_macro.jl && \
julia more_unions_and_tuples.jl && \
julia new_arrays.jl && \
julia parallel_pi.jl && \
julia parameter_packing_and_unpacking.jl && \
julia parametric_types.jl && \
julia remote_factor.jl && \
julia remote_factor_with_spawn.jl && \
julia remote_pi_computation.jl && \
julia scopes.jl && \
julia simple_macro_example.jl && \
julia splicing.jl && \
julia times.jl && \
julia triple.jl | diff ../test/triple_expected - && \
julia tuple_covariance.jl && \
julia tuple_types.jl && \
julia type_annotation_experiment.jl && \
julia union_types.jl && \
julia unless.jl && \
julia wordcount.jl < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** JULIA TESTS FAILED ***"
    exit 1
else
    echo
    echo "JULIA TESTS PASSED"
fi
