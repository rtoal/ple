@main def triple() =
  for
    c <- 1 to 40
    b <- 1 to c
    a <- 1 to b
    if a * a + b * b == c * c
  do
    println(s"$a, $b, $c")