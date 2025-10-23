function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
. "$PSScriptRoot\clockhands.bat" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
. "$PSScriptRoot\hello.bat" &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** BATCH TESTS FAILED ***" 
}
else { 
    "BATCH TESTS PASSED" 
} 
