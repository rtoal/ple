for (c in 1 to 40) {
  for (b in 1 to c) {
    for (a in 1 to b) {
      if (a * a + b * b == c * c) {
        print_string({j|$(a), $(b), $(c)\n|j});
      }
    }
  }
}