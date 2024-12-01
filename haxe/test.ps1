function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    $TestResult
    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# Running the test requires the powershell to be in the Haxe folder.
$currentLocation = $pwd
Set-Location "$PSScriptRoot"

$Error.clear()
haxe -main ClockHands --interp |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
haxe -main HelloWorld --interp &&
haxe -main Triple --interp | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** HAXE TESTS FAILED ***" 
}
else { 
    "HAXE TESTS PASSED" 
} 

# Returns the powershell back to its location. 
Set-Location "$currentLocation"


