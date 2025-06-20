fun sum-of-even-squares(a : list<int>)
  a.filter-map(fn(i) { if i.is-even then Just(i*i) else Nothing}).sum

fun main()
  assert("Assertion failed.", sum-of-even-squares([]) == 0)
  assert("Assertion failed.", sum-of-even-squares([1]) == 0)
  assert("Assertion failed.", sum-of-even-squares([1,2]) == 4)
  assert("Assertion failed.", sum-of-even-squares([1,2,3]) == 4)
  assert("Assertion failed.", sum-of-even-squares([1,2,3,4]) == 20)
  assert("Assertion failed.", sum-of-even-squares([4,6,7,2]) == 56)