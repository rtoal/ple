for c in 1..40 {
  for b in 1..c-1 {
    for a in 1..b-1 {
      if a * a + b * b == c * c {
        writef("%i, %i, %i\n", a, b, c);
      }
    }
  }
}
