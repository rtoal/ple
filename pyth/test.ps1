function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

# The folder for pyth.py must be in this path relative to the script.
$path = "$PSScriptRoot\pyth\pyth.py"

$Error.clear()
"rats" | python .\pyth\pyth.py -c (Get-Content "$PSScriptRoot\anagrams.pyth") | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_recursive_expected") |
    Assert-MatchTests &&
python $path -c (Get-Content "$PSScriptRoot\clockhands.pyth") | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
    Assert-MatchTests &&
python $path -c (Get-Content "$PSScriptRoot\first_twelve_fibs.pyth") &&
python $path -c (Get-Content "$PSScriptRoot\five_hellos.pyth") &&
python $path -c (Get-Content "$PSScriptRoot\hello.pyth") &&
# python $path -c (Get-Content "$PSScriptRoot\hypot.pyth") 4 &&
python $path -c (Get-Content "$PSScriptRoot\triangle.pyth") &&
python $path -c (Get-Content "$PSScriptRoot\triple.pyth") | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo';

if ($Error -or !$?) { 
    "*** PYTH TESTS FAILED ***" 
}
else { 
    "PYTH TESTS PASSED" 
} 


