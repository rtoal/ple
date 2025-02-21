function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    
    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
. "$PSScriptRoot\anagrams.ps1" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
. "$PSScriptRoot\clockhands_getdate.ps1" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") | 
    Assert-MatchTests &&
. "$PSScriptRoot\clockhands.ps1" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") | 
    Assert-MatchTests &&
. "$PSScriptRoot\fizzbuzz.ps1" && 
. "$PSScriptRoot\hello_world.ps1" &&
. "$PSScriptRoot\permutations.ps1" I like carrots | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
. "$PSScriptRoot\script_root.ps1" &&
. "$PSScriptRoot\sum_of_even_squares.ps1" &&
. "$PSScriptRoot\triple.ps1" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** POWERSHELL TESTS FAILED ***" 
}
else { 
    "POWERSHELL TESTS PASSED" 
} 


