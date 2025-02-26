function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
lua "$PSScriptRoot\anagrams.lua" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") | 
    Assert-MatchTests &&
lua "$PSScriptRoot\and_or_demo.lua" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | 
    lua "$PSScriptRoot\basic_latin_wordcount.lua" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") | 
    Assert-MatchTests  &&
lua "$PSScriptRoot\binding.lua" &&
lua "$PSScriptRoot\clockhands.lua" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
lua "$PSScriptRoot\coroutine_demo.lua" &&
lua "$PSScriptRoot\delegation_example.lua" &&
lua "$PSScriptRoot\errors.lua" &&
lua "$PSScriptRoot\exploring_parameters.lua" &&
lua "$PSScriptRoot\expression_lists.lua" &&
lua "$PSScriptRoot\function_examples.lua" &&
lua "$PSScriptRoot\generator.lua" &&
lua "$PSScriptRoot\locals.lua" &&
lua "$PSScriptRoot\metatable_examples.lua "&&
lua "$PSScriptRoot\more_table_examples.lua" &&
lua "$PSScriptRoot\nested_function_declaration.lua "&&
lua "$PSScriptRoot\nils.lua" &&
lua "$PSScriptRoot\operators.lua" &&
lua "$PSScriptRoot\permutations.lua" I like carrots | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") | 
    Assert-MatchTests &&
lua "$PSScriptRoot\recursive_fail.lua" &&
lua "$PSScriptRoot\recursive_ok.lua" &&
lua "$PSScriptRoot\references.lua" &&
lua "$PSScriptRoot\shallow.lua" &&
lua "$PSScriptRoot\standard_library.lua" &&
lua "$PSScriptRoot\static_or_dynamic_scope.lua" &&
lua "$PSScriptRoot\string_examples.lua" &&
lua "$PSScriptRoot\strong_and_weak_typing.lua" &&
lua "$PSScriptRoot\table_examples.lua" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" | 
    lua "$PSScriptRoot\top_ten_scorers.lua" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") | Assert-MatchTests &&
lua "$PSScriptRoot\triple.lua" | Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
Assert-MatchTests &&
lua "$PSScriptRoot\types.lua" &&
lua "$PSScriptRoot\vectors.lua" &&
lua "$PSScriptRoot\x_is_x.lua" &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** LUA TESTS FAILED ***"
}
else {
    "LUA TESTS PASSED"
}