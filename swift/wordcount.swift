import Foundation

var counts = [String: Int]()

while let line = readLine()?.lowercased() {
    let range = line.startIndex ..< line.endIndex
    line.enumerateSubstrings(in: range, options: .byWords) {w,_,_,_ in
        guard let word = w else {return}
        counts[word] = (counts[word] ?? 0) + 1
    }
}

for (word, count) in (counts.sorted {$0.0 < $1.0}) {
    print("\(word) \(count)")
}
