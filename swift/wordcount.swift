import Foundation

var counts = [String: Int]()

while let line = readLine()?.lowercaseString {
    let indices = line.characters.indices
    line.enumerateSubstringsInRange(indices, options: .ByWords) {
        word, _, _, _ in counts[word!] = (counts[word!] ?? 0) + 1
    }
}

for (word, count) in (counts.sort { $0.0 < $1.0 }) {
    print("\(word) \(count)")
}
