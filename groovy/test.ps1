function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
groovy "$PSScriptRoot\anagrams.groovy" rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
groovy "$PSScriptRoot\clockhands.groovy" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
groovy "$PSScriptRoot\hello.groovy" &&
groovy "$PSScriptRoot\permutations.groovy" I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
groovy "$PSScriptRoot\triple.groovy" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
groovy "$PSScriptRoot\sumOfEvenSquares.groovy" &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** GROOVY TESTS FAILED ***" 
}
else { 
    "GROOVY TESTS PASSED" 
}
