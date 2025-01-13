function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
ocaml "$PSScriptRoot\clockhands.ml" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
ocaml "$PSScriptRoot\mutable_stack.ml" &&
ocaml "$PSScriptRoot\persistent_stack.ml" &&
ocaml "$PSScriptRoot\triple.ml" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error) { 
    "*** OCAML TESTS FAILED ***" 
}
else { 
    "OCAML TESTS PASSED" 
} 


