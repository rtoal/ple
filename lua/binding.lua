function second(f)
  local name = "new"
  f()
end

function first()
  name = "old"
  print_name = function () print(name) end
  second(print_name)
end

first()
