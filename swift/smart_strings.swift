// e with acute accent
let s1 = "\u{e9}"                 // precomposed character
let s2 = "e\u{301}"               // e + combining accent
assert(s1 == s2)                  // == is normalized
assert(s2.characters.count == 1)  // Swift knows

// x in a circle
let s = "x\u{20dd}"               // x + combining circle
assert(s.characters.count == 1)   // one actual character
assert(s.utf16.count == 2)        // 0078 20DD
assert(s.utf8.count == 4)         // 78 E2 83 9D
