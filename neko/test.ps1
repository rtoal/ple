function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
nekoc "$PSScriptRoot\hello_world.neko" && neko "$PSScriptRoot\hello_world.n" &&
nekoc "$PSScriptRoot\triple.neko" && neko "$PSScriptRoot\triple.n" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** NEKO TESTS FAILED ***" 
}
else { 
    "NEKO TESTS PASSED" 
} 
