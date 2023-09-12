s = "Ć←afé"
-- Character                         CodePoint   Bytes
-- LATIN CAPITAL LETTER C WITH ACUTE       262   0xc4 0x86
-- LEFTWARDS ARROW                        8592   0xe2 0x86 0x90
-- LATIN SMALL LETTER A                     97   0x61
-- LATIN SMALL LETTER F                    102   0x66
-- LATIN SMALL LETTER E WITH ACUTE         233   0xc3 0xa9

assert(#s == 9)                -- counts bytes
assert(utf8.len(s) == 5)       -- counts code points

-- Strings can be assembled from code points in two ways
assert(utf8.char(262, 8592, 97, 102, 233) == s)
assert("\u{106}\u{2190}\u{61}\u{66}\u{e9}" == s)

-- Or assembled from UTF-8 bytes (must be in hex)
assert("\xc4\x86\xe2\x86\x90\x61\x66\xc3\xa9" == s)

print(utf8.codepoint(s, 1, #s))    -- print each code point
print(string.byte(s, 1, #s))       -- print each byte
