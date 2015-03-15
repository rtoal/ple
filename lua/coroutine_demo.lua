nextSquare = coroutine.create(function ()
  for value = 1, 5 do
    coroutine.yield(value * value)
  end
  return "Thank you"
end)

for i = 1, 8 do
  local status = coroutine.status(nextSquare)
  local success, values = coroutine.resume(nextSquare)
  print(status, success, values)
end
