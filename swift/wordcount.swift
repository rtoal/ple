import Foundation

var counts = [String: Int]()

while let line = readLine()?.lowercased() {
    let words = line.components(separatedBy: CharacterSet.alphanumerics.inverted).filter{$0 != ""}
    for word in words {
        counts[word] = (counts[word] ?? 0) + 1
    }
}

for (word, count) in (counts.sorted {$0.0 < $1.0}) {
    print("\(word) \(count)")
}
