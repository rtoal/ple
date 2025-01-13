for(c, 1, 40,
  for(b, 1, c-1,
    for(a, 1, b-1,
      (a**2 + b**2 == c**2) ifTrue(
        list(a, b, c) join(", ") println))))
