param (
    [Parameter(Mandatory=$false)][string]$language=""
)

function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
Get-Content "$PSScriptRoot\and.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 0 1 | Compare-Object ("0") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\clockhands.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
Get-Content "$PSScriptRoot\copy_values.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" &&
Get-Content "$PSScriptRoot\destructive_addition.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" &&
Get-Content "$PSScriptRoot\equality.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 241 241 | Compare-Object ("1") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\first_five_substring.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" abcdefghijklmnopqrstuvwxyz | Compare-Object ("abcde") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\hello.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" &&
Get-Content "$PSScriptRoot\hi.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" &&
Get-Content "$PSScriptRoot\modular_arithmetic.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" &&
Get-Content "$PSScriptRoot\not.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 0 | Compare-Object ("1") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\or.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 0 1 | Compare-Object ("1") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\store_input_number.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 204 &&
Get-Content "$PSScriptRoot\xand.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 0 1 | Compare-Object ("0") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\xor.bf" | java -ea "$PSScriptRoot\BrainfuckInterp.java" 0 1 | Compare-Object ("1") | Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** BRAINFUCK TESTS FAILED ***" 
}
else { 
    "BRAINFUCK TESTS PASSED" 
} 


