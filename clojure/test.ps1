function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )
    $TestResult
    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
clojure -M "$PSScriptRoot\agent_example.clj" &&
clojure -M "$PSScriptRoot\anagrams.clj" rats |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
clojure -M "$PSScriptRoot\animals_multi.clj" rats &&
clojure -M "$PSScriptRoot\animals_protocol.clj" &&
clojure -M "$PSScriptRoot\arithmetic.clj" &&
clojure -M "$PSScriptRoot\average.clj" &&
clojure -M "$PSScriptRoot\basic_types.clj" &&
clojure -M "$PSScriptRoot\clockhands.clj" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
clojure -M "$PSScriptRoot\count_and_conj.clj" &&
clojure -M "$PSScriptRoot\division.clj" &&
clojure -M "$PSScriptRoot\energy.clj" &&
clojure -M "$PSScriptRoot\fib.clj" &&
clojure -M "$PSScriptRoot\hints.clj" &&
clojure -M "$PSScriptRoot\improper_var_use.clj" &&
clojure -M "$PSScriptRoot\incorrect_factorial.clj" &&
clojure -M "$PSScriptRoot\infix.clj" &&
clojure -M "$PSScriptRoot\more_collection_examples.clj" &&
clojure -M "$PSScriptRoot\mystery.clj" &&
clojure -M "$PSScriptRoot\namespace_example.clj" &&
clojure -M "$PSScriptRoot\or.clj" &&
clojure -M "$PSScriptRoot\overflow.clj" &&
clojure -M "$PSScriptRoot\permutations.clj" I like carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
clojure -M "$PSScriptRoot\persistent_example.clj" &&
clojure -M "$PSScriptRoot\shape_multi.clj" &&
clojure -M "$PSScriptRoot\shape_protocol.clj" &&
clojure -M "$PSScriptRoot\simplest_macro.clj" &&
clojure -M "$PSScriptRoot\stm.clj" &&
clojure -M "$PSScriptRoot\sum_of_even_squares.clj" &&
clojure -M "$PSScriptRoot\thread_locking.clj" &&
clojure -M "$PSScriptRoot\thread_mess.clj" &&
# Get-Content "$PSScriptRoot\..\test\wnba_input" |
#     clojure -M "$PSScriptRoot\top_ten_scorers.clj" |
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
#     Assert-MatchTests &&
clojure -M "$PSScriptRoot\triple.clj" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
clojure -M "$PSScriptRoot\unless.clj" &&
clojure -M "$PSScriptRoot\varargs.clj" &&
clojure -M "$PSScriptRoot\vars.clj" &&
# Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
#     clojure -M "$PSScriptRoot\word_count.clj" |
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
#     Assert-MatchTests &&
# Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
#     clojure -M "$PSScriptRoot\word_count_slurp.clj" | 
#     Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
#     Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** CLOJURE TESTS FAILED ***"
}
else {
    "CLOJURE TESTS PASSED"
} 


