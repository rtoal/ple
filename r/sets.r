odds <- c(1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21)
primes <- c(2, 3, 5, 7, 11, 13, 17)
fibonnaci <- c(0, 1, 1, 2, 3, 5, 8, 13, 21)

# Make a true set
fib_unique <- unique(fibonnaci)
unique(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1))

# Set Intersection
intersect(odds, primes)
intersect(primes, fib_unique)
intersect(odds, intersect(primes, fib_unique))

# Containment
fib_unique[fib_unique %in% odds]
odds[odds %in% unique(fib_unique)]
# Negated Containment
primes[!primes %in% odds]
primes[primes %in% !odds]   # Does not work like that!

# Set Union
union(primes, fib_unique)
union(odds, fib_unique)

# Set Difference
setdiff(primes, fib_unique)
