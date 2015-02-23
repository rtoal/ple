factorial = function (n)
  local f = function (n, a)           -- WRONG !!!!
    return n==0 and a or f(n-1, a*n)  -- refers to global f
  end                                 -- but nil is not callable
  return f(n, 1)
end

_, reason = pcall(factorial, 10)      -- hoping for 3628800
print(reason)
