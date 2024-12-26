function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
elixir "$PSScriptRoot\clockhands.exs" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
elixir "$PSScriptRoot\hello.exs" &&
elixir "$PSScriptRoot\triple.exs" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) {
    "*** ELIXIR TESTS FAILED ***"
}
else {
    "ELIXIR TESTS PASSED"
}