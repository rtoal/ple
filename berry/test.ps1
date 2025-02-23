function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
"rats" | berry "$PSScriptRoot\anagrams.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\clockhands_time.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\clockhands.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\hello.be" &&
"I like carrots" | berry "$PSScriptRoot\permutations.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
berry "$PSScriptRoot\triple.be" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** BERRY TESTS FAILED ***" 
}
else { 
    "BERRY TESTS PASSED" 
} 
