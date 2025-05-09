function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$run = "$PSScriptRoot\a.exe"

$Error.clear()
g++ -std=c++20 "$PSScriptRoot\anagrams.cpp" && . $run rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
g++ -std=c++20 "$PSScriptRoot\animals.cpp" && . $run &&
g++ -std=c++20 "$PSScriptRoot\basic_types.cpp" && . $run &&
g++ -std=c++20 "$PSScriptRoot\if_then_else.cpp" && . $run &&
g++ -std=c++20 "$PSScriptRoot\maps.cpp" && . $run &&
g++ -std=c++20 "$PSScriptRoot\permutations.cpp" && . $run I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
g++ -std=c++20 "$PSScriptRoot\smart_pointers.cpp" && . $run &&
g++ -std=c++20 "$PSScriptRoot\sum_of_even_squares.cpp" && . $run &&
g++ -std=c++20 "$PSScriptRoot\top_ten_scorers.cpp" && Get-Content "$PSScriptRoot\..\test\wnba_input" | . $run |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
g++ -std=c++20 "$PSScriptRoot\triple.cpp" && . $run |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** C++ TESTS FAILED ***" 
}
else { 
    "C++ TESTS PASSED" 
} 
