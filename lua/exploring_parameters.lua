x = {1, 2, 3}
y = {4, 5, 6}

function f(a, b)
  a = 10               -- changing the parameter
  assert(x[1] == 1)    -- ...does not affect the argument
  b[2] = 20            -- changing a field
  assert(y[2] == 20)   -- ...does affect the argument
end

f(x, y)
