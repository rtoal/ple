function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$bin = "$PSScriptRoot\bin"

# First check if folder bin exists. If not, make a new bin folder.
if (!(Test-Path -Path $bin)) {
    New-Item -Path $bin -Type Directory
} 

$Error.clear()
iverilog -o "$bin\clockhands" "$PSScriptRoot\clockhands.sv" && vvp "$bin\clockhands" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
iverilog -o "$bin\hello" "$PSScriptRoot\hello.sv" && vvp "$bin\hello" &&
iverilog -o "$bin\triple" "$PSScriptRoot\triple.sv" && vvp "$bin\triple" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") | 
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** VERILOG TESTS FAILED ***"
}
else {
    "VERILOG TESTS PASSED"
}