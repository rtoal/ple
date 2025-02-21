for c in 1 .. 40:
  for b in 1 .. c:
    for a in 1 .. b:
      if a * a + b * b == c * c:
        echo $a, ", ", $b, ", ", $c

