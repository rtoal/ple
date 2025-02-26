function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
python "$PSScriptRoot\anagrams.py" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") | 
    Assert-MatchTests &&
python "$PSScriptRoot\anagrams_itertools.py" rats &&
python "$PSScriptRoot\animals.py" &&
python "$PSScriptRoot\basic_iterables.py" &&
python "$PSScriptRoot\clockhands_time.py" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
python "$PSScriptRoot\clockhands.py" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
python "$PSScriptRoot\custom_iterable.py" &&
python "$PSScriptRoot\custom_type.py" &&
python "$PSScriptRoot\early_declaration_error.py" &&
python -m py_compile "$PSScriptRoot\genexp.py" &&
python "$PSScriptRoot\inheritance.py" &&
python "$PSScriptRoot\kwargs_examples.py" &&
python "$PSScriptRoot\log_decorator_example.py" &&
python "$PSScriptRoot\memoized_fibonacci.py" &&
# python "$PSScriptRoot\mi.py" &&                   # Only works on iOS
python "$PSScriptRoot\monkey_patching.py" &&
python "$PSScriptRoot\object_pool.py" &&
python "$PSScriptRoot\permutations.py" I like carrots |
Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
Assert-MatchTests &&
python "$PSScriptRoot\powers_of_two.py" &&
python "$PSScriptRoot\powers_of_two_infinite.py" &&
python "$PSScriptRoot\proxy.py" &&
python "$PSScriptRoot\scope.py" &&
python "$PSScriptRoot\simple_keyword_arguments.py" &&
python "$PSScriptRoot\simple_types.py" &&
python "$PSScriptRoot\sum_of_even_squares.py" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" | 
    python "$PSScriptRoot\top_ten_scorers.py" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") | 
    Assert-MatchTests &&
python "$PSScriptRoot\triple_comprehensions.py" &&
python "$PSScriptRoot\triple.py" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
python "$PSScriptRoot\types_are_types.py" &&
python "$PSScriptRoot\varargs.py" &&
python "$PSScriptRoot\vectors.py" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | 
    python "$PSScriptRoot\wordcount.py" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** PYTHON TESTS FAILED ***" 
}
else { 
    "PYTHON TESTS PASSED" 
} 


