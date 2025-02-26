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

# Remove Python files in inline before clearing out errors.
Remove-Item "$PSScriptRoot\inline\inline.py"
Remove-Item "$PSScriptRoot\inline\inlineExcluded.py"

$Error.clear()
haxe --run Anagrams rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
haxe --run Animals &&
haxe --run ArrayComprehension &&
haxe --run Blocks &&
haxe --run Casting &&
haxe --run ClockHands |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
haxe --run ClockHandsDateTools |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
haxe --run ClockHandsStringTools |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
haxe "$PSScriptRoot\ConditionalCompilation.hxml" &&
haxe --run Copy &&
haxe --run DefaultArgs &&
haxe --run DefaultType &&
haxe --run DynamicAccess &&
haxe --run DynamicTypes &&
haxe --run Fibonacci &&
haxe --run FunctionArguments &&
haxe --run HelloWorld &&
haxe --run Immutability &&
haxe "$PSScriptRoot\InlineTests.hxml" &&
haxe --run Leniency &&
haxe --run LocalStaticVariables &&
haxe --run Monomorph &&
haxe --run NullType &&
haxe --run OptionEnum &&
haxe --run Permutations I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
haxe --run SumOfEvenSquares &&
haxe --run TemplateJokes &&
Get-Content "$PSScriptRoot\..\test\wnba_input" |
    haxe --run TopTenScorers |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
haxe --run Triple | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
haxe --run TypeDef &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    haxe --run WordCount |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
Get-Content "$PSScriptRoot\..\test\wordcount_input" |
    haxe --run WordCount > "$PSScriptRoot\a.out" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_expected") |
    Assert-MatchTests &&
    Remove-Item "$PSScriptRoot\a.out" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** HAXE TESTS FAILED ***" 
}
else { 
    "HAXE TESTS PASSED" 
} 

# Returns the powershell back to its location. 
Set-Location "$currentLocation"


