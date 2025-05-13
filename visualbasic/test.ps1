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
    Initialize-File("Clockhands.vb") && dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\clockhands_expected") |
        Assert-MatchTests &&
    Initialize-File("Hello.vb") && dotnet run --project $project &&
    Initialize-File("Triple.vb") && dotnet run --project $project |
        Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
        Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) {
    "*** VISUAL BASIC TESTS FAILED ***"
}
else {
    "VISUAL BASIC TESTS PASSED"
}