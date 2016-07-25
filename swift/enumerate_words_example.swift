import Foundation

let sentence = "単語を見つけることは困難です"
let range = sentence.startIndex ..< sentence.endIndex

sentence.enumerateSubstrings(in: range, options: .byWords) {w,_,_,_ in
    guard let word = w else {return}
    print(word)
}
