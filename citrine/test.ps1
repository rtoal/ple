function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
ctren "$PSScriptRoot\clockhands_moment.ctr" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
ctren "$PSScriptRoot\clockhands.ctr" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
ctren "$PSScriptRoot\hello_world.ctr" &&
ctren "$PSScriptRoot\triple.ctr" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** CITRINE TESTS FAILED ***"
}
else {
    "CITRINE TESTS PASSED"
}