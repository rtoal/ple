function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# Running the test requires the powershell to be in the Gleam root older.
$currentLocation = $pwd
Set-Location "$PSScriptRoot"

# Download dependencies if needed.
gleam add argv
gleam add gleam_regexp@1

$Error.clear()
gleam run -m anagrams_library rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
gleam run -m clockhands |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
gleam run -m factorial &&
gleam run -m generics &&
gleam run -m hello &&
gleam run -m pattern_matching &&
gleam run -m permutations I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
gleam run -m pipelines &&
gleam run -m sum_of_even_squares &&
gleam run -m top_ten_scorers (Get-Content "$PSScriptRoot\..\test\wnba_input") | 
    Compare-Object (Get-Content  "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
gleam run -m triple_pipelines |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
gleam run -m triple |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
gleam run -m type_aliases &&
gleam run -m type_enum &&
gleam run -m type_record &&
gleam run -m unqualified_imports &&
gleam run -m wordcount (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input") |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** GLEAM TESTS FAILED ***" 
}
else { 
    "GLEAM TESTS PASSED" 
} 

# Clean up Gleam Folder
gleam clean

# Returns the powershell back to its location. 
Set-Location "$currentLocation"


