def swap(a: Array[Char], i: Int, j: Int) {
  val saved = a(i)
  a(i) = a(j)
  a(j) = saved
}

def generatePermutations(a: Array[Char], n: Int) {
  if (n == 0) {
    println(String.valueOf(a))
  } else {
    for (i <- 0 until n) {
      generatePermutations(a, n-1)
      swap(a, if (n % 2 == 0) 0 else i, n)
    }
    generatePermutations(a, n-1)
  }
}

if (args.length != 1) {
  Console.err.println("Exactly one argument is required")
  sys.exit(1)
}
var word = args(0)
generatePermutations(word.toCharArray, word.length-1)
