// e with acute accent
let s1 = "e\u{301}"               // e + combining acute accent
let s2 = "\u{e9}"                 // the precomposed character
assert(s1.count == 1)             // Swift combines to count
assert(s1 == s2)                  // == compares the characters

// x in a circle
let s = "x\u{20dd}"               // x + combining circle
assert(s.count == 1)              // one actual character
assert(s.utf16.count == 2)        // 0078 20DD
assert(s.utf8.count == 4)         // 78 E2 83 9D
