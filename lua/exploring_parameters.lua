x = {1, 2, 3}
y = {4, 5, 6}

function f(a, b)
  a = 10               -- changing the parameter
  assert(x[1] == 1)    -- ...does NOT affect the argument
  b[2] = 20            -- but changing a field
  assert(y[2] == 20)   -- ...DOES affect the argument
end

f(x, y)
