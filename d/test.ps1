function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
dmd -run "$PSScriptRoot\clockhands.d" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
dmd -run "$PSScriptRoot\triple.d" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
# Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
#     dmd -run "$PSScriptRoot\wordcount.d" |
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
#     Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** D TESTS FAILED ***" 
}
else { 
    "D TESTS PASSED" 
} 
