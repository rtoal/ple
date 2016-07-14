x = 1
do
  assert(x == 1)    -- global x because local not yet seen
  local x = x + 2   -- uses global x on right-hand side
  assert(x == 3)    -- now, FINALLY, we see the local x
end
assert(x == 1)      -- back in the global scope, local gone
