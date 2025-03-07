function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
bal run "$PSScriptRoot\anagrams.bal" -- rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
bal run "$PSScriptRoot\clockhands.bal" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
bal run "$PSScriptRoot\hello_world.bal" &&
bal run "$PSScriptRoot\permutations.bal" -- I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
bal run "$PSScriptRoot\sum_of_even_squares.bal" &&
bal run "$PSScriptRoot\top_ten_scorers.bal" -- (Get-Content "$PSScriptRoot\..\test\wnba_input") |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
bal run "$PSScriptRoot\triple.bal" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
bal run "$PSScriptRoot\wordcount.bal" -- (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input") |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** BALLERINA TESTS FAILED ***" 
}
else { 
    "BALLERINA TESTS PASSED" 
} 
