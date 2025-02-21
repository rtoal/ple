function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
racket -f "$PSScriptRoot\clockhands_imperative.rkt" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
racket -f "$PSScriptRoot\clockhands.rkt" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests && 
racket -f "$PSScriptRoot\hello.rkt" &&
racket -f "$PSScriptRoot\triple_imperative.rkt" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests && 
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** RACKET TESTS FAILED ***" 
}
else { 
    "RACKET TESTS PASSED" 
} 


