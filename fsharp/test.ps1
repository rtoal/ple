function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
dotnet fsi --exec "$PSScriptRoot\clockhands.fsx" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
dotnet fsi --exec "$PSScriptRoot\hello.fsx" &&
100 | dotnet fsi --exec "$PSScriptRoot\lbToKg.fsx" &&
dotnet fsi --exec "$PSScriptRoot\mlUnits.fsx" &&
dotnet fsi --exec "$PSScriptRoot\sum_of_even_squares.fsx" &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** F# TESTS FAILED ***"
}
else {
    "F# TESTS PASSED"
}