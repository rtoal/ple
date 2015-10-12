x = 1

macro m() println(88); :(global x = 2) end
function f() @m() end

#println(x)
#f()
#println(x)
#x = 1
#f()
#println(x)

