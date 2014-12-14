for (c <- 1 to 50) {
  for (b <- 1 to c) {
    for (a <- 1 to b) {
      if (a * a + b * b == c * c) {
        println(s"$a, $b, $c")
      }
    }
  }
}