function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    
    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# To test for individual files, we need to copy and rename them as main.whiley

# File from the script folder copies to the src folder as the main file.
$scripts = "$PSScriptRoot\scripts"
$main = "$PSScriptRoot\src\main.whiley"

# wy command must be used inside the whiley folder.
$currentLocation = $pwd
Set-Location "$PSScriptRoot"

$Error.clear()
Copy-Item "$scripts\clockhands.whiley" -Destination "$main" && wy build && wy run |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
Copy-Item "$scripts\hello.whiley" -Destination "$main" && wy build && wy run &&
Copy-Item "$scripts\triple.whiley" -Destination "$main" && wy build && wy run |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** WHILEY TESTS FAILED ***" 
}
else { 
    "WHILEY TESTS PASSED" 
} 

# Returns the powershell back to its location. 
Set-Location "$currentLocation"