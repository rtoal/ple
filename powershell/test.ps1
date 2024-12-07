function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    $TestResult
    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
& "$PSScriptRoot\hello_world.ps1" &&
& "$PSScriptRoot\script_root.ps1" &&
& "$PSScriptRoot\triple.ps1" | Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** POWERSHELL TESTS FAILED ***" 
}
else { 
    "POWERSHELL TESTS PASSED" 
} 


