function first_few_primes()
  return {2, 3, 5, 7, 9, 11, 13}
end

assert(type(7.299E-3) == "number")
assert(type(true and false) == "boolean")
assert(type("café") == "string")
assert(type(nil) == "nil")
assert(type(first_few_primes) == "function")
assert(type(first_few_primes()) == "table")
assert(type(coroutine.create(first_few_primes) == "thread"))
