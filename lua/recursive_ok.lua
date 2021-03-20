factorial = function (n)
  local f                             -- allows f to be recursive
  f = function (n, a)                 -- scope of f begins here
    return n==0 and a or f(n-1, a*n)  -- proper recursive call
  end
  return f(n, 1)
end

assert(factorial(10) == 3628800)
