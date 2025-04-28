function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
escript "$PSScriptRoot\anagrams.erl" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_recursive_expected") |
    Assert-MatchTests &&
escript "$PSScriptRoot\bifs.erl" &&
escript "$PSScriptRoot\catches.erl" &&
escript "$PSScriptRoot\clockhands.erl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
erlc "$PSScriptRoot\counter.erl" && erlc "$PSScriptRoot\cook.erl" && erlc "$PSScriptRoot\customer.erl" && erlc "$PSScriptRoot\order_pool.erl" &&
escript "$PSScriptRoot\countdown.erl" &&
escript "$PSScriptRoot\destructure.erl" &&
escript "$PSScriptRoot\factorial.erl" &&
escript "$PSScriptRoot\guard_examples.erl" &&
escript "$PSScriptRoot\hello.erl" &&
escript "$PSScriptRoot\if_and_case.erl" &&
escript "$PSScriptRoot\more_matching.erl" &&
escript "$PSScriptRoot\non_streaming_triple.erl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
erlc "$PSScriptRoot\prime_checker.erl" && escript "$PSScriptRoot\primes.erl" &&
escript "$PSScriptRoot\sweeper.erl" &&
escript "$PSScriptRoot\triple.erl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
escript "$PSScriptRoot\types.erl" &&
erlc "$PSScriptRoot\vectors.erl" && escript "$PSScriptRoot\test_vectors.erl" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    escript "$PSScriptRoot\wordcount.erl" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** ERLANG TESTS FAILED ***"
}
else {
    "ERLANG TESTS PASSED"
}