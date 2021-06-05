function second(f)
  local name = "new"
  f()   -- how do we handle free variables in f?
end

function first()
  local name = "old"
  print_name = function () print(name) end
  second(print_name)
end

first()
