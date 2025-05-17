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
"rats" | java -jar $cjam "$PSScriptRoot\anagrams.cjam" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
java -jar $cjam "$PSScriptRoot\clockhands.cjam" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
java -jar $cjam "$PSScriptRoot\debug.cjam" &&
java -jar $cjam "$PSScriptRoot\first_twelve_fibs.cjam" &&
java -jar $cjam "$PSScriptRoot\five_hellos.cjam" &&
java -jar $cjam "$PSScriptRoot\hello.cjam" &&
"3 4" | java -jar $cjam "$PSScriptRoot\hypot.cjam" &&
"I like carrots" | java -jar $cjam "$PSScriptRoot\permutations.cjam" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
"1 2 3 4 5 6 7 8 9 10" | java -jar $cjam "$PSScriptRoot\sum_of_even_squares.cjam" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" | java -jar $cjam "$PSScriptRoot\top_ten_scorers.cjam" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
java -jar $cjam "$PSScriptRoot\triangle.cjam" &&
java -jar $cjam "$PSScriptRoot\triple.cjam" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** CJAM TESTS FAILED ***" 
}
else { 
    "CJAM TESTS PASSED" 
} 