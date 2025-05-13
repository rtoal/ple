function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# Running the test requires the powershell to be in the Haxe folder.
$currentLocation = $pwd
Set-Location "$PSScriptRoot"

$Error.clear()
    spago run -m Clockhands |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
        Assert-MatchTests &&
    spago run -m Hello &&
    spago run -m Triple |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
        Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** PURESCRIPT TESTS FAILED ***"
}
else {
    "PURESCRIPT TESTS PASSED"
}

# Returns the powershell back to its location. 
Set-Location "$currentLocation"