function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
sq "$PSScriptRoot\clockhands.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
sq "$PSScriptRoot\hello.nut" &&
sq "$PSScriptRoot\triple.nut" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** SQUIRREL TESTS FAILED ***" 
}
else { 
    "SQUIRREL TESTS PASSED" 
} 


