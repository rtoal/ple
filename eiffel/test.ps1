function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
ec "$PSScriptRoot\clockhands.e" && . "$PSScriptRoot\clockhands.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
ec "$PSScriptRoot\hello.e" && . "$PSScriptRoot\hello.exe" &&
ec "$PSScriptRoot\triple.e" && . "$PSScriptRoot\triple.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** EIFFEL TESTS FAILED ***"
}
else {
    "EIFFEL TESTS PASSED"
}
