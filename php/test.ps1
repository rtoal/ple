function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
php "$PSScriptRoot\clockhands.php" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
php "$PSScriptRoot\hello_world.php" &&
php "$PSScriptRoot\ternary_madness.php" &&
php "$PSScriptRoot\triples.php" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** PHP TESTS FAILED ***"
}
else {
    "PHP TESTS PASSED"
}