-- strings are coerced to numbers
assert("55" + "3" == 58)    -- because + is only for numbers
assert("3" * 5 == 15)       -- because * is only for numbers

-- and numbers to strings
assert(55 .. 3 == "553")    -- because .. is only for strings

-- and anything to a boolean
assert(3 or false)
assert(0 or false)          -- yes, 0 is a true value
assert("" or false)         -- yes, the empty string is a true value
assert({} or false)         -- yes, the empty table is a true value

assert(not (nil or false))  -- Only nil and false are false values

-- The following are errors and will not even run
-- false + 1                -- cannot do arithmetic on booleans
-- "the answer is" .. true  -- cannot concatenate booleans
-- false < true             -- cannot compare booleans
-- {} < {1, 2}              -- cannot compare tables
-- nil .. 3                 -- cannot concatenate nil