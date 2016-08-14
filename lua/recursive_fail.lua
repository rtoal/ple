factorial = function (n)
  local f = function (n, a)           -- WRONG !!!!
    return n==0 and a or f(n-1, a*n)  -- refers to GLOBAL f, crashes
  end                                 -- because nil is not callable
  return f(n, 1)                      -- calls local f
end

ok, reason = pcall(factorial, 10)     -- hoping for 3628800
assert(ok == false)
print(reason)                         -- your output will vary
