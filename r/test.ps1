function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
rscript "$PSScriptRoot\clockhands_time.r" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests && 
rscript "$PSScriptRoot\clockhands.r" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests && 
rscript "$PSScriptRoot\fizzbuzz.r" &&
rscript "$PSScriptRoot\hello.r" &&
rscript "$PSScriptRoot\prices.r" &&
rscript "$PSScriptRoot\triple.r" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests && 
rscript "$PSScriptRoot\vector_logic.r" &&
rscript "$PSScriptRoot\vector.r" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** R TESTS FAILED ***" 
}
else { 
    "R TESTS PASSED" 
} 