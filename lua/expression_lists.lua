function computeThreeThings()
  return 5, 6, 7
end

a, b = computeThreeThings()        -- extra results ignored
c, d, e, f = computeThreeThings()  -- extra vars get undefined
g, h, i = 4, computeThreeThings()  -- right-hand side is 4, 5, 6, 7

assert(a == 5 and b == 6)
assert(c == 5 and d == 6 and e == 7 and f == nil)
assert(g == 4 and h == 5 and i == 6)
