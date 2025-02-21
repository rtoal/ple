function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
"rats" | sq "$PSScriptRoot\anagrams.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
sq "$PSScriptRoot\clockhands_time.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
sq "$PSScriptRoot\clockhands.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
sq "$PSScriptRoot\comma_operator.nut" &&
sq "$PSScriptRoot\debug_keywords.nut" &&
sq "$PSScriptRoot\floating_point_mystery.nut" &&
sq "$PSScriptRoot\hello.nut" &&
"I like carrots" | sq "$PSScriptRoot\permutations.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
sq "$PSScriptRoot\sum_of_even_squares.nut" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" | 
    sq "$PSScriptRoot\top_ten_scorers.nut" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
sq "$PSScriptRoot\table.nut" &&
sq "$PSScriptRoot\triple.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | 
    sq "$PSScriptRoot\wordcount.nut" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** SQUIRREL TESTS FAILED ***" 
}
else { 
    "SQUIRREL TESTS PASSED" 
} 


