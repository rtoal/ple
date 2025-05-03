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
java -jar $vyxal --file "$PSScriptRoot\cat.vy" supercalifragilisticexpialidocious |
    Compare-Object "supercalifragilisticexpialidocious" |
    Assert-MatchTests &&
java -jar $vyxal --file "$PSScriptRoot\clockhands.vy" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
java -jar $vyxal --file "$PSScriptRoot\codepage.vy" &&
java -jar $vyxal --file "$PSScriptRoot\hello.vy" &&
java -jar $vyxal --file "$PSScriptRoot\permutations.vy" I like carrots|
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
java -jar $vyxal --file "$PSScriptRoot\sum_of_even_squares.vy" 6 7 4 2 |
    Compare-Object 56 |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** VYXAL TESTS FAILED ***" 
}
else { 
    "VYXAL TESTS PASSED" 
} 
