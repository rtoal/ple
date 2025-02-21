function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
awk -E "$PSScriptRoot\clockhands_time.awk" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
awk -E "$PSScriptRoot\clockhands.awk" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    awk -E "$PSScriptRoot\wordcount.awk" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** AWK TESTS FAILED ***"
}
else {
    "AWK TESTS PASSED"
}