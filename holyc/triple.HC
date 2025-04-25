I32 a, b, c;
for (c = 1; c < 41; c++) {
  for (b = 1; b < c; b++) {
    for (a = 1; a < b ; a++) {
      if (a*a + b*b == c*c) {
        "%d, %d, %d\n", a, b, c;
      }
    }
  }
}