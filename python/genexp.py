# List comprehension.
# Computes all of its elements first.
# If large, it's too slow to produce and wastes memory.
bad = [x*x for x in range(10**9)]

# Generator expression.
# Produces values on demand, during iteration.
# Computed instantly and consumes almost no memory.
good = (x*x for x in range(10**9))
