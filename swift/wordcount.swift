import Foundation

var counts = [String: Int]()

while let line = readLine()?.lowercaseString {
    let range = line.characters.indices
    line.enumerateSubstringsInRange(range, options: .ByWords) {w,_,_,_ in
        guard let word = w else {return}
        counts[word] = (counts[word] ?? 0) + 1
    }
}

for (word, count) in (counts.sort {$0.0 < $1.0}) {
    print("\(word) \(count)")
}
