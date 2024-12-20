function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
lci "$PSScriptRoot\casting.lol" &&
lci "$PSScriptRoot\clockhands.lol" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
lci "$PSScriptRoot\concatenation.lol" &&
lci "$PSScriptRoot\fibonacci.lol" &&
lci "$PSScriptRoot\hello_world.lol" &&
lci "$PSScriptRoot\triple.lol" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
lci "$PSScriptRoot\srs.lol" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** LOLCODE TESTS FAILED ***" 
}
else { 
    "LOLCODE TESTS PASSED" 
} 


