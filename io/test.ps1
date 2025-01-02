function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
io "$PSScriptRoot\cj.io" &&
io "$PSScriptRoot\clockhands.io" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
io "$PSScriptRoot\clockhandsOneLine.io" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
io "$PSScriptRoot\hello.io" &&
io "$PSScriptRoot\triple.io" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** IO TESTS FAILED ***"
}
else {
    "IO TESTS PASSED"
}