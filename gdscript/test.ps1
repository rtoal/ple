function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
godot --display-driver headless --no-header -s "$PSScriptRoot\anagrams.gd" rats | Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") | Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\fibonacci.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\file_reader.gd" "$PSScriptRoot\..\test\carrots_expected" | Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") | Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\hello_world.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\permutations.gd" I like carrots | Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") | Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\static_variables.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\sum_of_even_squares.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\triple.gd" | Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\vectors.gd" &&
ForEach-Object 'foo'

if ($Error) {
    "*** GDSCRIPT TESTS FAILED ***"
}
else {
    "GDSCRIPT TESTS PASSED"
}