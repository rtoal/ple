iterator fibonacci(times: int): int =
  var n = times
  var curr: int = 1
  var next: int = 1
  while n > 0:
    yield curr
    swap(curr, next)
    curr += next
    n -= 1

for num in fibonacci(10):
  echo num