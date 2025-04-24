for (I32 c = 1; c < 41; c++) {
  for (I32 b = 1; b < c; b++) {
    for (I32 a = 1; a < b ; a++) {
      if (a*a + b*b == c*c) {
        "%d, %d, %d\n", a, b, c;
      }
    }
  }
}