import Foundation

// Should be fixed: This reads in all of standard input
let standardInput = NSFileHandle.fileHandleWithStandardInput()
let input = standardInput.availableData
let text = String(data: input, encoding: NSUTF8StringEncoding)!

var counts = [String: Int]()

func isWordChar (c: Character) -> Bool {
    return "abcdefghijklmnopqrstuvwxyz'".rangeOfString("\(c)") != nil
}

for word in (text.lowercaseString.characters.split{!isWordChar($0)}.map(String.init)) {
    if let count = counts[word] {
        counts[word] = count + 1
    } else {
        counts[word] = 1
    }
}

for (word, count) in (counts.sort { $0.0 < $1.0 }) {
    print("\(word) \(count)")
}
