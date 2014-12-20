#!/usr/bin/env xcrun swift

import Foundation

func countWords (splitArray : [String]) -> Dictionary<String, Int> {
    var wordCounts = Dictionary<String, Int>(),
        regex = NSRegularExpression(pattern: "([a-z\']+)", options: nil, error: nil)
    
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

if (Process.arguments.count < 2) {
    println("2 or more arguments are required");
    exit(1)
} else {
    var subArr = Process.arguments[1..<Process.arguments.count],
        joiner = " ",
        joinedStrings = joiner.join(subArr),
        splitStrings = joinedStrings.lowercaseString.componentsSeparatedByString(joiner)
    printWordCounts(countWords(splitStrings))
}
