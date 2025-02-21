def swap(a: Array[Char], i: Int, j: Int): Unit =
  val saved = a(i)
  a(i) = a(j)
  a(j) = saved

def generatePermutations(a: Array[Char], n: Int): Unit =
  if n == 0 then
    println(String.valueOf(a))
  else
    for i <- 0 until n do
      generatePermutations(a, n-1)
      swap(a, if n % 2 == 0 then 0 else i, n)
    generatePermutations(a, n-1)

@main def anagrams(args: String*) =
  if args.length != 1 then
    Console.err.println("Exactly one argument is required")
    sys.exit(1)
  var word = args(0)
  generatePermutations(word.toCharArray, word.length-1)
