import std/[strutils, cmdline]

type InputArgumentError* = object of IOError

proc printPermutations(a: var seq[string], n: int) =
  if n <= 0:
    echo a.join("\t")
  else:
    for i in 0 ..< n:
      printPermutations(a, n - 1)
      let j = if n mod 2 == 0: 0 else: i
      swap(a[j], a[n])
    printPermutations(a, n - 1)

when isMainModule:
  var args = commandLineParams()
  if len(args) == 0:
    raise newException(InputArgumentError,
      "ERROR: At least one argument is required")
  printPermutations(args, len(args) - 1)
