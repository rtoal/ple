for (c <- 1 to 40) {
  for (b <- 1 until c) {
    for (a <- 1 until b) {
      if (a * a + b * b == c * c) {
        println(s"$a, $b, $c")
      }
    }
  }
}
