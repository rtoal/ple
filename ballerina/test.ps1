function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
bal run "$PSScriptRoot\helloWorld.bal" &&
bal run "$PSScriptRoot\triple.bal" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** BALLERINA TESTS FAILED ***" 
}
else { 
    "BALLERINA TESTS PASSED" 
} 
