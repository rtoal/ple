function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
asciidots "$PSScriptRoot\clockhands.dots" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
asciidots "$PSScriptRoot\hello.dots" &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** ASCIIDOTS TESTS FAILED ***" 
}
else { 
    "ASCIIDOTS TESTS PASSED" 
} 