function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

function Initialize-File {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $FileName
    )

    Get-Content "$PSScriptRoot\$FileName" > "$PSScriptRoot\project\Program.vb"
}

# File path for the project folder.
$project = "$PSScriptRoot\project"

$Error.clear()
    Initialize-File("Anagrams.vb") && dotnet run --project $project rats |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
        Assert-MatchTests &&
    Initialize-File("Clockhands.vb") && dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
        Assert-MatchTests &&
    Initialize-File("ClockhandsTime.vb") && dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
        Assert-MatchTests &&
    Initialize-File("Hello.vb") && dotnet run --project $project &&
    Initialize-File("Permutations.vb") && dotnet run --project $project I like carrots |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
        Assert-MatchTests &&
    Initialize-File("SumOfEvenSquares.vb") && dotnet run --project $project &&
    Initialize-File("TopTenScorers.vb") && dotnet run --project $project (Get-Content "$PSScriptRoot\..\test\wnba_input") |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
        Assert-MatchTests &&
    Initialize-File("Triple.vb") && dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
        Assert-MatchTests &&
    Initialize-File("Wordcount.vb") && dotnet run --project $project (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input") |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
        Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** VISUAL BASIC TESTS FAILED ***"
}
else {
    "VISUAL BASIC TESTS PASSED"
}