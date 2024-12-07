a = [1,2,3,4,5]
b = [0,2,3,4,5]
a == b
a ~= b
c = 1
d = 0
f = true
g = false
h = "0"
j = "Blah blah blah"
k = ""

if a
    disp("A is valid")
else
    disp("A is not valid")
end
if b
    disp("B is valid")
else
    disp("B is not valid")
end
if a == b
    disp("A == B is valid")
else
    disp("A == B is not valid")
end
if a ~= b
    disp("A ~= B is valid")
else
    disp("A ~= B is not valid")
end
if c
    disp("C is valid")
else
    disp("C is not valid")
end
if d
    disp("D is valid")
else
    disp("D is not valid")
end
if f
    disp("F is valid")
else
    disp("F is not valid")
end
if g
    disp("G is valid")
else
    disp("G is not valid")
end
if h
    disp("H is valid")
else
    disp("H is not valid")
end
if j
    disp("J is valid")
else
    disp("J is not valid")
end
if k
    disp("K is valid")
else
    disp("K is not valid")
end