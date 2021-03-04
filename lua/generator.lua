next_square = (function ()
  local previous = -1
  return function ()
    previous = previous + 1
    return previous ^ 2
  end
end)()

assert(next_square() == 0)
assert(next_square() == 1)
assert(next_square() == 4)
