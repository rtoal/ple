def swap(a: Array[String], i: Int, j: Int): Unit =
  val saved = a(i)
  a(i) = a(j)
  a(j) = saved

def printPermutations(a: Array[String], n: Int): Unit =
  if n == 0 then
    println(a.mkString("\t"))
  else
    for i <- 0 until n do
      printPermutations(a, n-1)
      swap(a, if n % 2 == 0 then 0 else i, n)
    printPermutations(a, n-1)

@main def permutations(args: String*) =
  if args.length < 1 then
    Console.err.println("At least one argument is required")
    sys.exit(1)
  printPermutations(args.toArray, args.length-1)
