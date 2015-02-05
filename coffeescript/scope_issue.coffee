[a, b, c] = [0, 1, 2]
f = () ->
  a = 100    # Global because there's an a out there
  b = 200    # Global because there's an a out there
  d = 300    # Local because there's no d out there
  e = 400    # Local because there's no e out there
f()
console.log '%d %d %d', a, b, c
try
  console.log(d);
catch
  console.log 'd is not defined out here'
