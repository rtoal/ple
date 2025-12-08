function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        $TestResult
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
    dotnet run "$PSScriptRoot\Anagrams.cs" rats |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
        Assert-MatchTests &&
    dotnet run "$PSScriptRoot\Animal.cs" &&
    dotnet run "$PSScriptRoot\Clockhands.cs" |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
        Assert-MatchTests &&
    dotnet run "$PSScriptRoot\Greeter.cs" &&
    dotnet run "$PSScriptRoot\Permutations.cs" I like carrots |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
        Assert-MatchTests &&
    dotnet run "$PSScriptRoot\ReifiedExample.cs" &&
    Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |  
        dotnet run "$PSScriptRoot\TraditionalWordCounter.cs" |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
        Assert-MatchTests &&
    dotnet run "$PSScriptRoot\SumOfEvenSquares.cs"
    dotnet run "$PSScriptRoot\Tripler.cs" |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
        Assert-MatchTests &&
    Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |  
        dotnet run "$PSScriptRoot\WordCounter.cs" |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
        Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** C# TESTS FAILED ***"
}
else {
    "C# TESTS PASSED"
}