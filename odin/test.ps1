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

$Error.clear()
odin run "$PSScriptRoot\clockhands.odin" -file -out:"$bin\clockhands.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
# The permutations.odin file outputs anagrams, not permutations.
odin run "$PSScriptRoot\permutations.odin" -file -out:"$bin\permutations.exe" -- rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
odin run "$PSScriptRoot\triple.odin" -file -out:"$bin\triple.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** ODIN TESTS FAILED ***" 
}
else { 
    "ODIN TESTS PASSED" 
} 
