function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
a68g "$PSScriptRoot\clockhands.a68" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
a68g "$PSScriptRoot\hello.a68" &&
a68g "$PSScriptRoot\roman.a68" &&
a68g "$PSScriptRoot\triple.a68" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** ALGOL 68 TESTS FAILED ***" 
}
else { 
    "ALGOL 68 TESTS PASSED" 
} 


