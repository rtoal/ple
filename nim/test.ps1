function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
nim c "$PSScriptRoot\permutations.nim" && . "$PSScriptRoot\permutations.exe" I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
nim c "$PSScriptRoot\triple.nim" && . "$PSScriptRoot\triple.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** NIM TESTS FAILED ***" 
}
else { 
    "NIM TESTS PASSED" 
} 
