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
nekoc -o $bin "$PSScriptRoot\anagrams.neko" && "rats" | neko "$bin\anagrams.n" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
nekoc -o $bin "$PSScriptRoot\clockhands_date.neko" && neko "$bin\clockhands_date.n" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
nekoc -o $bin "$PSScriptRoot\clockhands.neko" && neko "$bin\clockhands.n" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
nekoc -o $bin "$PSScriptRoot\factorial_generator.neko" && neko "$bin\factorial_generator.n" &&
nekoc -o $bin "$PSScriptRoot\hello_world.neko" && neko "$bin\hello_world.n" &&
nekoc -o $bin "$PSScriptRoot\permutations.neko" && "I like carrots" | neko "$bin\permutations.n" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
nekoc -o $bin "$PSScriptRoot\triple.neko" && neko "$bin\triple.n" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** NEKO TESTS FAILED ***" 
}
else { 
    "NEKO TESTS PASSED" 
} 
