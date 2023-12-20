s = "\u{1f1f7}\u{1f1f1}"
assert(#s == 8)                   -- counts bytes
assert(utf8.len(s) == 2)          -- counts code points

print(utf8.codepoint(s, 1, #s))   -- print each code point
print(string.byte(s, 1, #s))      -- print each byte
