nextSquare = coroutine.create(function ()
  local value = -1
  while true do
    value = value + 1
    coroutine.yield(value * value)
  end
end)

print(coroutine.resume(nextSquare))
print(coroutine.resume(nextSquare))
print(coroutine.resume(nextSquare))
print(coroutine.resume(nextSquare))
print(coroutine.resume(nextSquare))
print(coroutine.resume(nextSquare))
