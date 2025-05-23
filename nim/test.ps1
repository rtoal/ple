function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
nim c "$PSScriptRoot\anagrams.nim" && . "$PSScriptRoot\anagrams.exe" rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
nim c "$PSScriptRoot\clockhands.nim" && . "$PSScriptRoot\clockhands.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
nim c "$PSScriptRoot\fibonacci_iterator.nim" && . "$PSScriptRoot\fibonacci_iterator.exe" &&
nim c "$PSScriptRoot\permutations.nim" && . "$PSScriptRoot\permutations.exe" I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
nim c "$PSScriptRoot\sum_of_even_squares.nim" && . "$PSScriptRoot\sum_of_even_squares.exe" &&
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
