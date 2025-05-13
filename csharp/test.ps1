function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        $TestResult
        Write-Error "Output does not match expected results."
    }
}

function Initialize-File {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $FileName
    )

    Get-Content "$PSScriptRoot\$FileName" > "$PSScriptRoot\project\Program.cs"
}

# File path for the project folder.
$project = "$PSScriptRoot\project"

$Error.clear()
    Initialize-File("Greeter.cs") && dotnet run --project $project &&
    Initialize-File("ReifiedExample.cs") && dotnet run --project $project &&
    Initialize-File("TraditionalWordCounter.cs") && Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
        dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
        Assert-MatchTests &&
    Initialize-File("Tripler.cs") && dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
        Assert-MatchTests &&
    Initialize-File("WordCounter.cs") && Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
        dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") &&
        # Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** C# TESTS FAILED ***"
}
else {
    "C# TESTS PASSED"
}