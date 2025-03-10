function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results.`n$TestResult"
    }
}

$Error.clear()
janet "$PSScriptRoot\clockhands.janet" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
janet "$PSScriptRoot\hello.janet" &&
janet "$PSScriptRoot\triple.janet" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** JANET TESTS FAILED ***"
}
else {
    "JANET TESTS PASSED"
}