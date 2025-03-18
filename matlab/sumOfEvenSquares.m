assert(ses([]) == 0)
assert(ses([1]) == 0)
assert(ses([1,2]) == 4)
assert(ses([1,2,3]) == 4)
assert(ses([1,2,3,4]) == 20)
assert(ses([4,6,7,2]) == 56)

function n = ses(a)
    n = sum(a(mod(a, 2) == 0).^2);
end

