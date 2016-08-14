function add(x, y)
  return x + y
end

success, result = pcall(add, 5, 3)
assert(success == true and result == 8)
success, result = pcall(add, 5, false)
assert(success == false)
