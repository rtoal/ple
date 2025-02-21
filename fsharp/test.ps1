function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
dotnet fsi "$PSScriptRoot\clockhands.fsx" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
dotnet fsi "$PSScriptRoot\hello.fsx" &&
100 | dotnet fsi "$PSScriptRoot\lbToKg.fsx" &&
dotnet fsi "$PSScriptRoot\mlUnits.fsx" &&
dotnet fsi "$PSScriptRoot\sum_of_even_squares.fsx" &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** F# TESTS FAILED ***"
}
else {
    "F# TESTS PASSED"
}