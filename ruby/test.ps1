function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results.`n$TestResult"
    }
}

$Error.clear()

ruby "$PSScriptRoot\access.rb" &&
ruby "$PSScriptRoot\anagrams_heap.rb" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") | 
    Assert-MatchTests &&
ruby "$PSScriptRoot\anagrams.rb" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_recursive_expected") | 
    Assert-MatchTests &&
ruby "$PSScriptRoot\animals.rb" &&
ruby "$PSScriptRoot\block_scope.rb" &&
ruby "$PSScriptRoot\block_shorthand.rb" &&
ruby "$PSScriptRoot\block_with_no_parameters.rb" &&
ruby "$PSScriptRoot\block_with_parameters.rb" &&
ruby "$PSScriptRoot\blocks_and_scope_experiments.rb" &&
ruby "$PSScriptRoot\circle.rb" &&
ruby "$PSScriptRoot\class_definition.rb" &&
ruby "$PSScriptRoot\class_new_example.rb" &&
ruby "$PSScriptRoot\clockhands.rb" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") | 
    Assert-MatchTests &&
ruby "$PSScriptRoot\common_class_summary.rb" &&
ruby "$PSScriptRoot\data_example.rb" &&
ruby "$PSScriptRoot\globals.rb" &&
ruby "$PSScriptRoot\make_enum.rb" &&
ruby "$PSScriptRoot\mixin_example.rb" &&
ruby "$PSScriptRoot\multi.rb" &&
ruby "$PSScriptRoot\multiple_mixins.rb" &&
ruby "$PSScriptRoot\non_encapsulated_point.rb" &&
ruby "$PSScriptRoot\object_and_class_examples.rb" &&
ruby "$PSScriptRoot\one_two_three.rb" &&
ruby "$PSScriptRoot\open_classes.rb" &&
ruby "$PSScriptRoot\parameter_examples.rb" &&
ruby "$PSScriptRoot\powers_of_two.rb" &&
ruby "$PSScriptRoot\private_object_methods.rb" &&
ruby "$PSScriptRoot\proc_and_lambda_return.rb" &&
ruby "$PSScriptRoot\procs_and_lambdas.rb" &&
ruby "$PSScriptRoot\simple_messaging.rb" &&
ruby "$PSScriptRoot\singleton_example.rb" &&
ruby "$PSScriptRoot\sum_of_even_squares.rb" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" |
    ruby "$PSScriptRoot\top_ten_scorers.rb" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
ruby "$PSScriptRoot\triple.rb" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ruby "$PSScriptRoot\unityping.rb" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | 
    ruby "$PSScriptRoot\wordcount.rb" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") | 
    Assert-MatchTests
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** RUBY TESTS FAILED ***"
}
else {
    "RUBY TESTS PASSED"
}