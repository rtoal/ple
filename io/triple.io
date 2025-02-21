for(c, 1, 40,
  for(b, 1, c-1,
    for(a, 1, b-1,
      if(a**2 + b**2 == c**2,
        list(a, b, c) join(", ") println))))
