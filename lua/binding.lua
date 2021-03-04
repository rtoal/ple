function second(f)
  local name = "new"
  f()
end

function first()
  const name = "old"
  const print_name = function print(name) end
  second(print_name)
}

first()
