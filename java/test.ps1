function Assert-MatchTests {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)] $TestResult
    )

    if ($TestResult) {
        Write-Error "Output does not match expected results."
    }
}

$Error.clear()
# javac -cp .:json.jar PokeApiApp.java *.java &&
# javac old\*.java &&
java -ea "$PSScriptRoot\AnagramApp.java" rats | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\rats_heap_expected") |
    Assert-MatchTests &&
java -ea "$PSScriptRoot\AnimalChorusExample.java" &&
java -ea "$PSScriptRoot\AnimalsApp.java" &&
java -ea "$PSScriptRoot\ArithmeticSequenceExample.java" &&
java -ea "$PSScriptRoot\BillionDollarMistakeExample.java" &&
java -ea "$PSScriptRoot\CircleApp.java" &&
java -ea "$PSScriptRoot\EqualsExample.java" &&
java -ea "$PSScriptRoot\EvenSquareSummer.java" &&
java -ea "$PSScriptRoot\IntrospectionExample.java" &&
java -ea "$PSScriptRoot\InvarianceExample.java" &&
java -ea "$PSScriptRoot\ListAndSetExample.java" &&
java -ea "$PSScriptRoot\MinMaxTester.java" &&
java -ea "$PSScriptRoot\OptionalExample.java" &&
java -ea "$PSScriptRoot\PairExample.java" &&
java -ea "$PSScriptRoot\PermutationsApp.java" I like carrots |  
    Compare-Object (Get-Content "$PSScriptRoot\..\test\carrots_expected") |
    Assert-MatchTests &&
# java -cp .:json.jar PokeApiApp &&
java -ea "$PSScriptRoot\PrimePrinterApp.java" &&
java -ea "$PSScriptRoot\RaceConditionExample.java" &&
java -ea "$PSScriptRoot\ReflectionExample.java" &&
java -ea "$PSScriptRoot\SheepAdder.java" &&
Get-Content "$PSScriptRoot\..\test\wnba_input" |
    java -ea "$PSScriptRoot\TopTenScorersApp.java" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wnba_expected") |
    Assert-MatchTests &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    java -ea "$PSScriptRoot\TraditionalWordCountApp.java" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
java -ea "$PSScriptRoot\TripleApp.java" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\triple_expected") |
    Assert-MatchTests &&
java -ea "$PSScriptRoot\TwiceExample.java" &&
java -ea "$PSScriptRoot\TypeExperiment.java" &&
java -ea "$PSScriptRoot\VariableExample.java" &&
Get-Content "$PSScriptRoot\..\test\wordcount_ascii_input" |
    java -ea "$PSScriptRoot\WordCountApp.java" | 
    Compare-Object (Get-Content "$PSScriptRoot\..\test\wordcount_ascii_expected") |
    Assert-MatchTests &&
ForEach-Object 'foo'

if ($Error -or !$?) { 
    "*** JAVA TESTS FAILED ***" 
}
else { 
    "JAVA TESTS PASSED" 
} 