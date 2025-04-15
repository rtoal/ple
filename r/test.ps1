function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
rscript "$PSScriptRoot\clockhands.r" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests && 
rscript "$PSScriptRoot\fizzbuzz.r" &&
rscript "$PSScriptRoot\hello.r" &&
rscript "$PSScriptRoot\prices.r" &&
rscript "$PSScriptRoot\vector_logic.r" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** R TESTS FAILED ***" 
}
else { 
    "R TESTS PASSED" 
} 