function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results.`n$TestResult"
    }
}

$Error.clear()
julia "$PSScriptRoot\abstract_types.jl" &&
julia "$PSScriptRoot\anagrams.jl" rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
julia "$PSScriptRoot\animals.jl" &&
julia "$PSScriptRoot\annotations.jl" &&
julia "$PSScriptRoot\array_ops.jl" &&
julia "$PSScriptRoot\array_slicing.jl" &&
julia "$PSScriptRoot\clockhands_dates.jl" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
julia "$PSScriptRoot\clockhands.jl" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
julia "$PSScriptRoot\concrete_types.jl" &&
julia "$PSScriptRoot\css.jl" &&
julia "$PSScriptRoot\eval_and_scope.jl" &&
julia "$PSScriptRoot\exprs.jl" &&
julia "$PSScriptRoot\fib.jl" &&
julia "$PSScriptRoot\function_definitions.jl" &&
julia "$PSScriptRoot\global.jl" &&
julia "$PSScriptRoot\hygiene_example.jl" &&
julia "$PSScriptRoot\invariance.jl" &&
julia "$PSScriptRoot\isa.jl" &&
julia "$PSScriptRoot\kwargs.jl" &&
julia "$PSScriptRoot\log_macro.jl" &&
julia "$PSScriptRoot\more_unions_and_tuples.jl" &&
julia "$PSScriptRoot\new_arrays.jl" &&
julia "$PSScriptRoot\parallel_pi.jl" &&
julia "$PSScriptRoot\parameter_packing_and_unpacking.jl" &&
julia "$PSScriptRoot\parametric_types.jl" &&
julia "$PSScriptRoot\permutations.jl" I like carrots | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
# julia "$PSScriptRoot\remote_factor.jl" &&
# julia "$PSScriptRoot\remote_factor_with_spawn.jl" &&
# julia "$PSScriptRoot\remote_pi_computation.j" &&
julia "$PSScriptRoot\scopes.jl" &&
julia "$PSScriptRoot\simple_macro_example.jl" &&
julia "$PSScriptRoot\splicing.jl" &&
julia "$PSScriptRoot\times.jl" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" |
    julia "$PSScriptRoot\top_ten_scorers.jl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
julia "$PSScriptRoot\triple.jl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests && 
# julia "$PSScriptRoot\tuple_covariance.jl" &&
julia "$PSScriptRoot\tuple_types.jl" &&
julia "$PSScriptRoot\type_annotation_experiment.jl" &&
julia "$PSScriptRoot\union_types.jl" &&
julia "$PSScriptRoot\unless.jl" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    julia "$PSScriptRoot\wordcount.jl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** JULIA TESTS FAILED ***"
}
else {
    "JULIA TESTS PASSED"
}