import std/[strutils, sequtils, cmdline]

type InputArgumentError* = object of IOError

proc generatePermutations(a: var seq[char], n: int) =
  if n <= 0:
    echo a.join("")
  else:
    for i in 0 ..< n:
      generatePermutations(a, n - 1)
      let j = if n mod 2 == 0: 0 else: i
      swap(a[j], a[n])
    generatePermutations(a, n - 1)

when isMainModule:
  var args = commandLineParams()
  if len(args) != 1:
    raise newException(InputArgumentError, "ERROR: There must be exactly 1 argument.")
  var letters = toSeq(args[0].items)
  generatePermutations(letters, len(letters) - 1)
