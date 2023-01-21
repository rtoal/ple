a = {x=3, y=5}   -- creates an object, stores reference in a
b = a.y          -- simply puts 5 into b
c = true         -- simply puts true into c
d = {x=3, y=5}   -- creates an object, stores reference in d
e = d            -- does not create an object, induces sharing
