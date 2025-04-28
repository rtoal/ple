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
gleam run -m clockhands |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
gleam run -m factorial &&
gleam run -m generics &&
gleam run -m hello &&
gleam run -m pipelines &&
gleam run -m unqualified_imports &&
gleam clean &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** GLEAM TESTS FAILED ***" 
}
else { 
    "GLEAM TESTS PASSED" 
} 

# Returns the powershell back to its location. 
Set-Location "$currentLocation"


