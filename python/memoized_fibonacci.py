def memoized(f):
    cache = {}
    def wrapper(*args):
        if args in cache:
            return cache[args]
        cache[args] = f(*args)
        return cache[args]
    return wrapper

@memoized
def fib(n):
    return 1 if n <= 1 else fib(n-1) + fib(n-2)

print(fib(100))
