function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    $TestResult
    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
lobster "$PSScriptRoot\clockhands.lobster" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
lobster "$PSScriptRoot\hello.lobster" &&
lobster "$PSScriptRoot\triple.lobster" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** LOBSTER TESTS FAILED ***" 
}
else { 
    "LOBSTER TESTS PASSED" 
} 