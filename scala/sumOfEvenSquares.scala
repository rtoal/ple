def pow(x: Int, y: Int): Int =
  var product = 1
  for i <- 1 to y 
  do product *= x
  return product

def ses(a: Array[Int]): Int =
  return a.filter(_ % 2 == 0).map(pow(_,2)).fold(0)(_ + _)

@main def sumOfEvenSquares() = 
  assert(ses(Array()) == 0)
  assert(ses(Array(1)) == 0)
  assert(ses(Array(1,2)) == 4)
  assert(ses(Array(1,2,3)) == 4)
  assert(ses(Array(1,2,3,4)) == 20)
  assert(ses(Array(4,6,7,2)) == 56)