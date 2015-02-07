[a, b, c] = [0, 1, 2]
f = () ->
  a = 100    # Overwrites global: there's an a out there
  b = 200    # Overwrites global: there's a b out there
  d = 300    # Local, because there's no d out there
f()
console.log '%d %d %d', a, b, c
try
  console.log(d);
catch
  console.log 'd is not defined out here'
