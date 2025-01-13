function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
node "$PSScriptRoot\animals.js" &&
node "$PSScriptRoot\arrays_and_objects.js" &&
node "$PSScriptRoot\bad_constructor.js" &&
node "$PSScriptRoot\binding.js" &&
node "$PSScriptRoot\bracket.js" &&
node "$PSScriptRoot\circle_with_class.js" &&
node "$PSScriptRoot\circle_with_object_create.js" &&
node "$PSScriptRoot\circle.js" &&
node "$PSScriptRoot\default_arguments.js" &&
node "$PSScriptRoot\destructure_examples.js" &&
node "$PSScriptRoot\emoji_character_count_sad.js" &&
node "$PSScriptRoot\exploring_parameters.js" &&
node "$PSScriptRoot\for_loops.js" &&
node "$PSScriptRoot\for_of_examples.js" &&
node "$PSScriptRoot\function_examples.js" &&
node "$PSScriptRoot\generator.js" &&
node "$PSScriptRoot\iterators.js" &&
node "$PSScriptRoot\jsfuck.js" &&
node "$PSScriptRoot\method_example_short_syntax.js" &&
node "$PSScriptRoot\method_example.js" &&
node "$PSScriptRoot\more_destructuring.js" &&
node "$PSScriptRoot\numbers.js" &&
node "$PSScriptRoot\object_pattern_as_parameter.js" &&
node "$PSScriptRoot\parameters.js" &&
node "$PSScriptRoot\permutations.js" I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
node "$PSScriptRoot\primitives_and_references.js" &&
node "$PSScriptRoot\promise_demo.js" &&
node "$PSScriptRoot\reference_error.js" &&
node "$PSScriptRoot\references.js" &&
node "$PSScriptRoot\scopes_and_var.js" &&
node "$PSScriptRoot\simple_scopes.js" &&
node "$PSScriptRoot\static_or_dynamic_scope.js" &&
node "$PSScriptRoot\strings.js" &&
node "$PSScriptRoot\supervisor.js" &&
node "$PSScriptRoot\this_examples.js" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" |
    node "$PSScriptRoot\top_ten_scorers.js" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") | 
    Assert-MatchTests &&
node "$PSScriptRoot\triple.js" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
node "$PSScriptRoot\types_and_type_errors.js" &&
node "$PSScriptRoot\queues.js" &&
node "$PSScriptRoot\without_optional_chaining.js" &&
node "$PSScriptRoot\wordcount-callback.js" "$PSScriptRoot\..\test\wordcount_input" > "$PSScriptRoot\a.out" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_expected") | 
    Assert-MatchTests &&
    Remove-Item "$PSScriptRoot\a.out" &&
Get-Content "$PSScriptRoot\..\test\wordcount_input" |
    node "$PSScriptRoot\wordcount.js" > "$PSScriptRoot\a.out" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_expected") | 
    Assert-MatchTests &&
    Remove-Item "$PSScriptRoot\a.out" &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** JAVASCRIPT TESTS FAILED ***" 
}
else { 
    "JAVASCRIPT TESTS PASSED" 
} 


