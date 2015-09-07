# Many built-in types have built-in names
assert type(5) == int
assert type(True) == bool
assert type(5.7) == float
assert type(9 + 5j) == complex
assert type((8, 'dog', False)) == tuple
assert type('hello') == str
assert type(b'hello') == bytes
assert type([1, '', False]) == list
assert type(range(1,10)) == range
assert type({1, 2, 3}) == set
assert type(frozenset([1, 2, 3])) == frozenset
assert type({'x': 1, 'y': 2}) == dict
assert type(slice([1, 2, 3])) == slice

# Built-in vs. User-defined functions
def plus_two(x):
    return x + 2
assert str(type(plus_two)) == "<class 'function'>"
assert str(type(max)) == "<class 'builtin_function_or_method'>"

# Even modules are types!
import math
assert str(type(math)) == "<class 'module'>"

# Many built-in modules define their own types
from datetime import date
assert type(date(1969,7,20)) == date
