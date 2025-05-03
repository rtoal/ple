function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    
    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# Location of the vyxal.jar file
# You will need to readjust this line to fit with the name of the .jar file in this folder.
$vyxal = "$PSScriptRoot\vyxal.jar"

$Error.clear()
java -jar $vyxal --file "$PSScriptRoot\anagrams.vy" rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
java -jar $vyxal --file "$PSScriptRoot\codepage.vy" &&
java -jar $vyxal --file "$PSScriptRoot\hello.vy" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** VYXAL TESTS FAILED ***" 
}
else { 
    "VYXAL TESTS PASSED" 
} 
