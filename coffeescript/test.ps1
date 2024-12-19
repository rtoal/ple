function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
coffee "$PSScriptRoot\anagrams.coffee" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
coffee "$PSScriptRoot\animals.coffee" &&
coffee "$PSScriptRoot\average_with_splats.coffee" &&
coffee "$PSScriptRoot\chained_existential.coffee" &&
coffee "$PSScriptRoot\circle.coffee" &&
coffee "$PSScriptRoot\default_arguments.coffee" &&
coffee "$PSScriptRoot\destructure_examples.coffee" &&
coffee "$PSScriptRoot\distance.coffee" &&
coffee "$PSScriptRoot\existential.coffee" &&
coffee "$PSScriptRoot\explicit_destructure.coffee" &&
coffee "$PSScriptRoot\function_examples.coffee" &&
coffee "$PSScriptRoot\greeter.coffee" &&
coffee "$PSScriptRoot\median_of_three.coffee" &&
coffee "$PSScriptRoot\object_example.coffee" &&
coffee "$PSScriptRoot\object_iteration.coffee" &&
coffee "$PSScriptRoot\scope_fixes.coffee" &&
coffee "$PSScriptRoot\scope_issue.coffee" &&
coffee "$PSScriptRoot\simple_comprehension.coffee" &&
coffee "$PSScriptRoot\string_example.coffee" &&
coffee "$PSScriptRoot\switch_example.coffee" &&
coffee "$PSScriptRoot\this_example.coffee" &&
coffee "$PSScriptRoot\triple.coffee" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
coffee "$PSScriptRoot\types_and_type_errors.coffee" &&
## TEST NOT WORKING: Cannot find module 'xregexp'
# Get-Content "$PSScriptRoot\..\test\wordcount_input" | 
#     coffee "$PSScriptRoot\wordcount.coffee" | 
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_expected") |
#     Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** COFEESCRIPT TESTS FAILED ***"
}
else {
    "COFEESCRIPT TESTS PASSED"
}