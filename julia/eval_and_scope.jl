x = 10

macro g()
  local x = 1
  :(x + 5)
end

(function f()
  local x = 3
  @assert eval(:(x + 5)) == 15    # x eval'd in global scope!
  @assert @g() == 8               # x evaluated here
end)()
