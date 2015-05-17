def swap(a: Array[Char], i: Int, j: Int) {
  val saved = a(i)
  a(i) = a(j)
  a(j) = saved
}

def generatePermutations(n: Int, a: Array[Char]) {
  if (n == 0) {
    println(String.valueOf(a))
  } else {
    for (i <- 0 to n) {
      generatePermutations(n-1, a)
      swap(a, if (n % 2 == 0) i else 0, n)
    }
  }
}

if (args.length != 1) {
  Console.err.println("Exactly one argument is required")
  sys.exit(1)
}
var word = args(0)
generatePermutations(word.length-1, word.toCharArray)
