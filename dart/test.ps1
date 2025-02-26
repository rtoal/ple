function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
# dart "$PSScriptRoot\anagrams.dart" rats |
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
#     Assert-MatchTests &&
dart "$PSScriptRoot\animals.dart" &&
dart "$PSScriptRoot\binding.dart" &&
# dart "$PSScriptRoot\circle.dart" &&
dart "$PSScriptRoot\clockhands.dart" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
dart "$PSScriptRoot\exploring_parameters.dart" &&
dart "$PSScriptRoot\function_examples.dart" &&
# dart "$PSScriptRoot\generator.dart" &&
dart "$PSScriptRoot\method_example.dart" &&
dart "$PSScriptRoot\primitives_and_references.dart" &&
# dart "$PSScriptRoot\scopes_and_var.dart" &&               #Why is this missing?
dart "$PSScriptRoot\static_or_dynamic_scope.dart" &&
dart "$PSScriptRoot\triple.dart" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
dart "$PSScriptRoot\unique_string_demo.dart" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    dart "$PSScriptRoot\wordcount.dart" |
    Compare-Object (Get-content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** DART TESTS FAILED ***"
}
else {
    "DART TESTS PASSED"
}






