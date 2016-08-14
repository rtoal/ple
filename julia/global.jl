x = 2
function f() global x=5; @assert x == 5 end
f()
@assert x == 5
