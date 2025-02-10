function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
scala "$PSScriptRoot\anagrams.scala" -- rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
scala "$PSScriptRoot\animals.scala" &&
scala "$PSScriptRoot\clockhands.scala" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
scala "$PSScriptRoot\clockhandsTime.scala" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
scala "$PSScriptRoot\triple.scala" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** SCALA TESTS FAILED ***"
}
else {
    "SCALA TESTS PASSED"
}