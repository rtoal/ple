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
haxe --run Anagrams rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
haxe --run Animals |
haxe --run ClockHands |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
haxe "$PSScriptRoot\ConditionalCompilation.hxml" &&
haxe --run DynamicAccess &&
haxe --run DynamicTypes &&
haxe --run HelloWorld &&
haxe --run Monomorph &&
haxe --run OptionalArgs &&
haxe --run Permutations I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
haxe --run Triple | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
haxe --run TypeDef &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** HAXE TESTS FAILED ***" 
}
else { 
    "HAXE TESTS PASSED" 
} 

# Returns the powershell back to its location. 
Set-Location "$currentLocation"


