function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
lean "$PSScriptRoot\ClockHands.lean" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
lean "$PSScriptRoot\Hello.lean" &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** LEAN TESTS FAILED ***" 
}
else { 
    "LEAN TESTS PASSED" 
} 
