function list_table(t)
  print()
  print(t)
  for key, value in pairs(t) do
    print(key .. ' (' .. type(value) .. ')')
  end
end

for _, t in ipairs({math, os, package, string, utf8}) do
  list_table(t)
end