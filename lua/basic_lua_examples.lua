print(x)         -- Does not fail! It's just nil
print(#"café")   -- It's 5, because it counts UTF-8 bytes

if 0 then
  print "0 is truthy"
else
  print "0 is falsy"
end

function firstFewPrimes()
  return {2, 3, 5, 7, 9, 11, 13}
end

assert(type(4.66E-2) == "number")
assert(type(true and false) == "boolean")
assert(type('message') == "string")
assert(type(nil) == "nil")
assert(type(firstFewPrimes) == "function")
assert(type(firstFewPrimes()) == "table")
