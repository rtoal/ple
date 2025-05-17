function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    
    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# Location of the cjam.jar file
$cjam = "$PSScriptRoot\cjam-0.6.5.jar"

$Error.clear()
java -jar $cjam "$PSScriptRoot\clockhands.cjam" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
java -jar $cjam "$PSScriptRoot\first_twelve_fibs.cjam" &&
java -jar $cjam "$PSScriptRoot\five_hellos.cjam" &&
java -jar $cjam "$PSScriptRoot\hello.cjam" &&
"3 4" | java -jar $cjam "$PSScriptRoot\hypot.cjam" &&
java -jar $cjam "$PSScriptRoot\triangle.cjam" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** CJAM TESTS FAILED ***" 
}
else { 
    "CJAM TESTS PASSED" 
} 