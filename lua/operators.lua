assert(8 + 5 * 3 == 23)         -- illustration of precedence
assert(8 - 5 - 2 == 1)          -- illustration of left associativity
assert(3 ^ 5 == 243)            -- exponentiation
assert(19 / 5 == 3.8)           -- normal division
assert(19 // 5 == 3)            -- floor division
assert(0x1000 == 4096)          -- 0x lets us write numbers in hex
assert(3 ~= 5)                  -- not equals
assert(-10 <= 3)                -- numbers can be compared
assert("dog" < "dogs")          -- so can strings
assert(#{5, 8, 13} == 3)        -- tables have a length

assert(2 > 8 and 100 or 200)    -- approximation of: 
                                --   if 2>8 then 100 else 200

-- string concatentation
assert("dog" .. "house" == "doghouse")

