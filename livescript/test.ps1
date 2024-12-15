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
lsc "$PSScriptRoot\clockhands.ls" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
lsc "$PSScriptRoot\hello_world.ls" &&
lsc "$PSScriptRoot\triple.ls" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** LIVESCRIPT TESTS FAILED ***" 
}
else { 
    "LIVESCRIPT TESTS PASSED" 
} 


