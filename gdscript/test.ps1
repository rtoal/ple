function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($null -ne $TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
godot --display-driver headless --no-header -s "$PSScriptRoot\anagrams.gd" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") | 
    Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\animal.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\clockhands.gd" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests && 
godot --display-driver headless --no-header -s "$PSScriptRoot\clockhands_time.gd" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests && 
godot --display-driver headless --no-header -s "$PSScriptRoot\code_regions.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\documentation_comment.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\enum.gd" && 
godot --display-driver headless --no-header -s "$PSScriptRoot\fibonacci.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\file_reader.gd" "$PSScriptRoot\..\test\carrots_expected" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") | 
    Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\hello_world.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\permutations.gd" I like carrots | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") | 
    Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\quaternions.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\static_constructor.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\static_typing.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\sum_of_even_squares.gd" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" | 
    godot --display-driver headless --no-header -s "$PSScriptRoot\top_ten_scorers.gd" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\triple.gd" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
godot --display-driver headless --no-header -s "$PSScriptRoot\variadic_functions.gd" &&
godot --display-driver headless --no-header -s "$PSScriptRoot\vectors.gd" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | 
    godot --display-driver headless --no-header -s "$PSScriptRoot\word_count.gd" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** GDSCRIPT TESTS FAILED ***"
}
else {
    "GDSCRIPT TESTS PASSED"
}