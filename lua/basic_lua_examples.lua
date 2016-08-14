assert(x == nil)             -- Does not fail! x is nil

s = "café"
assert(#s == 5)              -- counts bytes
assert(utf8.len(s) == 4)     -- counts characters

function firstFewPrimes()
  return {2, 3, 5, 7, 9, 11, 13}
end

assert(type(4.66E-2) == "number")
assert(type(true and false) == "boolean")
assert(type('message') == "string")
assert(type(nil) == "nil")
assert(type(firstFewPrimes) == "function")
assert(type(firstFewPrimes()) == "table")
assert(type(coroutine.create(firstFewPrimes) == "thread"))

assert(0 and "" and 0/0)     -- all of these are truthy!
assert(not(false or nil))    -- only false and nil are falsy