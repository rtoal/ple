import Foundation

var inputString = "Hello @stEVE my name is -e28a~Jack! hello" as NSString
var splitArray = inputString.lowercaseString.componentsSeparatedByString(" ")
var regex = NSRegularExpression(pattern: "([a-z\']+)", options: nil, error: nil)


func countWords () -> Dictionary<String, Int> {
    var wordCounts = Dictionary<String, Int>()
    for word in splitArray {
        var matches = regex?.matchesInString(word, options: nil, range: NSMakeRange(0, countElements(word))) as [NSTextCheckingResult]
        for match in matches {
            var regWord = word[advance(word.startIndex, match.range.location)..<advance(word.startIndex, (match.range.location + match.range.length))]
            if (wordCounts[regWord] == nil) {
                wordCounts[regWord] = 1
            } else {
                wordCounts[regWord] = wordCounts[regWord]! + 1
            }
        }
    }
    return wordCounts
}

func printWordCounts (wordCounts : Dictionary<String, Int>) {
    for (word, wordCount) in wordCounts {
        println("\(word) : \(wordCount)")
    }
}



var joiner = " "
var elements : Array<String> = Process.arguments
var eleCount = countElements(elements)
var els : Array<String> = Array(elements[1...(eleCount)])
var line = joiner.join(els)
