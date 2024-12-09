function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
go run "$PSScriptRoot\anagrams.go" rats | Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") | Assert-MatchTests &&
go test "$PSScriptRoot\animals_test.go" &&
go test "$PSScriptRoot\arrays_test.go" &&
go test "$PSScriptRoot\base64_error_test.go" &&
go test "$PSScriptRoot\binarytree\binary_tree_test.go" "$PSScriptRoot\binarytree\binary_tree.go" &&
go test "$PSScriptRoot\channel_sum_test.go" &&
go test "$PSScriptRoot\closed_channel_read_test.go" &&
go test "$PSScriptRoot\compound_statements_test.go" &&
go test "$PSScriptRoot\copy_test.go" &&
go run "$PSScriptRoot\cpu.go" &&
go test "$PSScriptRoot\escape_test.go" &&
go test "$PSScriptRoot\format_specifier_test.go" &&
go test "$PSScriptRoot\functions_test.go" &&
go test "$PSScriptRoot\hello_world_test.go" &&
go run "$PSScriptRoot\interfaces.go" &&
go test "$PSScriptRoot\maps_test.go" &&
go test "$PSScriptRoot\more_functions_test.go" &&
go run "$PSScriptRoot\multiple_hellos.go" &&
go test "$PSScriptRoot\nil_maps_test.go" &&
go test "$PSScriptRoot\pointer_test.go" &&
go run "$PSScriptRoot\primes.go" &&
go test "$PSScriptRoot\recover_test.go" &&
go test "$PSScriptRoot\reflection_types_test.go" &&
#go build "$PSScriptRoot\restaurant\*.go" &&
go test "$PSScriptRoot\shapes_test.go" &&
go test "$PSScriptRoot\simple_json_test.go" &&
go test "$PSScriptRoot\simple_types_test.go" &&
go test "$PSScriptRoot\slice_test.go" &&
go test "$PSScriptRoot\structs_test.go" &&
go run "$PSScriptRoot\triple.go" | Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | Assert-MatchTests &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | go run "$PSScriptRoot\wordcount.go" | Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") | Assert-MatchTests &&
ForEach-Object "foo"

if ($Error -or !$?) {
    "*** GO TESTS FAILED ***"
}
else {
    "GO TESTS PASSED"
}