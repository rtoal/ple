function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
groovy "$PSScriptRoot\clockhands.groovy" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
groovy "$PSScriptRoot\hello.groovy" &&
groovy "$PSScriptRoot\triple.groovy" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** GROOVY TESTS FAILED ***" 
}
else { 
    "GROOVY TESTS PASSED" 
}
