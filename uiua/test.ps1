function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results.`n$TestResult"
    }
}

$Error.clear()

uiua "$PSScriptRoot\clockhands.ua" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
uiua "$PSScriptRoot\disambiguation.ua" &&
uiua "$PSScriptRoot\glyph.ua" &&
uiua "$PSScriptRoot\triple.ua" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&

ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** UIUA TESTS FAILED ***"
}
else {
    "UIUA TESTS PASSED"
}