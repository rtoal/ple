// Swift understands grapheme clusters and encodings
let s = "\u{1f1f1}\u{1f1e7}"
assert(s.characters.count == 1)
assert(s.utf16.count == 4)
assert(s.utf8.count == 8)
