function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
kotlin -J-ea "$PSScriptRoot\animals.kt" &&
kotlin -J-ea "$PSScriptRoot\binary_tree.kt" &&
kotlin "$PSScriptRoot\circle.kt" &&
kotlin "$PSScriptRoot\codepoints.kt" &&
kotlin "$PSScriptRoot\collections.kt" &&
kotlin "$PSScriptRoot\companions.kt" &&
kotlin "$PSScriptRoot\conditionals.kt" &&
kotlin "$PSScriptRoot\coroutines.kt" &&
kotlin -J-ea "$PSScriptRoot\dataclasses.kt" &&
kotlin "$PSScriptRoot\extensions.kt" &&
kotlin "$PSScriptRoot\functions.kt" &&
kotlin "$PSScriptRoot\hello.kt" &&
kotlin -J-ea "$PSScriptRoot\hof.kt" &&
kotlin -J-ea "$PSScriptRoot\infix.kt" &&
kotlin -J-ea "$PSScriptRoot\null_safety.kt" &&
kotlin -J-ea "$PSScriptRoot\objects.kt" &&
kotlin "$PSScriptRoot\overloading.kt" &&
kotlin "$PSScriptRoot\permutations.kt" I like carrots | Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") | Assert-MatchTests &&
kotlin "$PSScriptRoot\sealed.kt" &&
kotlin "$PSScriptRoot\shapes.kt" &&
kotlin "$PSScriptRoot\top_ten_scorers.kt" "$PSScriptRoot\..\test\wnba_input" | Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") | Assert-MatchTests &&
kotlin -J-ea "$PSScriptRoot\trailing.kt" &&
kotlin "$PSScriptRoot\triple.kt" | Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | Assert-MatchTests &&
kotlin -J-ea "$PSScriptRoot\unit_and_nothing.kt" &&
kotlin -J-ea "$PSScriptRoot\user.kt" &&
kotlin -J-ea "$PSScriptRoot\variables.kt" &&
kotlin -J-ea "$PSScriptRoot\vectors.kt" &&
ForEach-Object 'foo';

if ($Error -or $?) { 
    "*** KOTLIN TESTS FAILED ***" 
}
else { 
    "KOTLIN TESTS PASSED" 
} 


