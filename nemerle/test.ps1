function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# Executable File Path
$out = "$PSScriptRoot\out.exe"

$Error.clear()
ncc "$PSScriptRoot\clockhands.n" && . $out |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
ncc "$PSScriptRoot\hello.n" && . $out &&
ncc "$PSScriptRoot\triple.n" && . $out |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** NEMERLE TESTS FAILED ***" 
}
else { 
    "NEMERLE TESTS PASSED" 
} 