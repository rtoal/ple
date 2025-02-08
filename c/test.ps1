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
# gcc -std=c2x "$PSScriptRoot\anagrams.c" && . $run rats | 
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
#     Assert-MatchTests && 
gcc -std=c2x "$PSScriptRoot\array_in_struct.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\assignment.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\cheating_with_pointers.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\clockhands_time.c" && . $run |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
gcc -std=c2x "$PSScriptRoot\clockhands.c" && . $run |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
gcc -std=c2x "$PSScriptRoot\const.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\directives.c" && . $run &&
gcc -std=c2x -c "$PSScriptRoot\hashmap.c" &&
gcc -std=c2x "$PSScriptRoot\indexing.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\memory.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\permutations.c" && . $run I like carrots | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
gcc -std=c2x "$PSScriptRoot\reinterpret_cast.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\simple_macro.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\sizeof.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\sum_of_even_squares.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\sum.c" && . $run &&
# gcc -std=c2x "$PSScriptRoot\top_ten_scorers.c" && Get-Content "$PSScriptRoot\..\test\wnba_input" | . $run |
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
#     Assert-MatchTests &&
gcc -std=c2x "$PSScriptRoot\triple.c" && . $run | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests && 
gcc -std=c2x "$PSScriptRoot\ugly_pointer_arithmetic.c" && . $run &&
gcc -std=c2x "$PSScriptRoot\union.c" && . $run &&
# gcc -std=c2x "$PSScriptRoot\wordcount.c" && Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" | . $run | 
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
#     Assert-MatchTests &&
gcc -std=c2x "$PSScriptRoot\x_is_x.c" && . $run &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** C TESTS FAILED ***" 
}
else { 
    "C TESTS PASSED" 
} 
