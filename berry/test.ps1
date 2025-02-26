function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
berry "$PSScriptRoot\anagrams.be" rats|
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\clockhands_time.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\clockhands.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\hello.be" &&
berry "$PSScriptRoot\permutations.be" I like carrots|
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\sum_of_even_squares.be" &&
berry "$PSScriptRoot\top_ten_scorers.be" (Get-Content "$PSScriptRoot\..\test\wnba_input") |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\triple.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\wordcount.be" (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input") |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** BERRY TESTS FAILED ***" 
}
else { 
    "BERRY TESTS PASSED" 
} 
