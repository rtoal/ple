function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$bin = "$PSScriptRoot\bin"

# First check if folder bin exists. If not, make a new bin folder.
if (!(Test-Path -Path $bin)) {
    New-Item -Path $bin -Type Directory
} 

# This honestly could be better (bug with spaces in file path).
$Error.clear()
grain "`"$PSScriptRoot\citiesList.gr`"" -o "$bin\citiesList.gr.wasm" &&
grain "`"$PSScriptRoot\clockhands.gr`"" -o "$bin\clockhands.gr.wasm" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
grain "`"$PSScriptRoot\helloWorld.gr`"" -o "$bin\helloWorld.gr.wasm" && 
grain "`"$PSScriptRoot\triple.gr`"" -o "$bin\triple.gr.wasm" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** GRAIN TESTS FAILED ***" 
}
else { 
    "GRAIN TESTS PASSED" 
}
