function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
io "$PSScriptRoot\anagrams.io" rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
io "$PSScriptRoot\cj.io" &&
io "$PSScriptRoot\clockhands.io" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
io "$PSScriptRoot\clockhandsOneLine.io" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
io "$PSScriptRoot\hello.io" &&
io "$PSScriptRoot\permutations.io" I like carrots | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
io "$PSScriptRoot\string_interpreter.io" &&
io "$PSScriptRoot\sumOfEvenSquares.io" &&
io "$PSScriptRoot\triple.io" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** IO TESTS FAILED ***"
}
else {
    "IO TESTS PASSED"
}