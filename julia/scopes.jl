a, b, c = 1, 2, 3       # three globals
(function ()
  a = 10                # introduces local and shadows
  global b = 20         # overwrites global
  d = 10c + 10          # new local, reading global
  local e = 5
  while true
    e = 50              # outer e because marked local
    f = 60              # local to while loop!
    break
  end
  @assert (a,b,c,d,e) == (10,20,3,40,50)
  @assert (try f catch -1 end) == -1
end)()
@assert (a,b,c) == (1,20,3)
