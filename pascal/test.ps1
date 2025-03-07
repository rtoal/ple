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
fpc "$PSScriptRoot\clockhands.pas" -FE"$bin" && . "$bin\clockhands.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
fpc "$PSScriptRoot\hello.pas" -FE"$bin" && . "$bin\hello.exe" &&
fpc "$PSScriptRoot\reserved_word_identifiers.pas" -FE"$bin" && . "$bin\reserved_word_identifiers.exe" &&
fpc "$PSScriptRoot\triple.pas" -FE"$bin" && . "$bin\triple.exe" |
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&  
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** PASCAL TESTS FAILED ***" 
}
else { 
    "PASCAL TESTS PASSED" 
} 