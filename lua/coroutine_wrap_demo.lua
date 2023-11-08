nextSquare = coroutine.wrap(function ()
  for value = 1, 5 do
    coroutine.yield(value * value)
  end
  return "Thank you"
end)

for i = 1, 8 do
  local success, value = pcall(nextSquare)
  print(success, value)
end
