function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results.`n$TestResult"
    }
}

$Error.clear()

uiua "$PSScriptRoot\disambiguation.ua" &&
uiua "$PSScriptRoot\glyph.ua" &&

ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** UIUA TESTS FAILED ***"
}
else {
    "UIUA TESTS PASSED"
}