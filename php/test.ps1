function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
php "$PSScriptRoot\animal.php" &&
php "$PSScriptRoot\clockhands.php" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
php "$PSScriptRoot\float_cast_error.php" &&
php "$PSScriptRoot\hello.php" &&
php "$PSScriptRoot\html_escaping.php" &&
php "$PSScriptRoot\integer_overflow.php" &&
php "$PSScriptRoot\never_function.php" &&
php "$PSScriptRoot\sum_of_even_squares.php" &&
php "$PSScriptRoot\ternary_madness.php" &&
php "$PSScriptRoot\triples.php" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
php "$PSScriptRoot\truthy.php" &&
php "$PSScriptRoot\void_function.php" &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** PHP TESTS FAILED ***"
}
else {
    "PHP TESTS PASSED"
}