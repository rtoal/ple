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
zig run "$PSScriptRoot\clockhands.zig" &&
zig run "$PSScriptRoot\coords.zig" &&
zig run "$PSScriptRoot\hello.zig" &&
zig run "$PSScriptRoot\odd_even.zig" &&
zig run "$PSScriptRoot\permuations.zig" -- I love carrots |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
zig run "$PSScriptRoot\triple.zig" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** ZIG TESTS FAILED ***" 
}
else { 
    "ZIG TESTS PASSED" 
} 