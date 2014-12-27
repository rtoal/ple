for c in [1..50]
  for b in [1..c]
    for a in [1..b]
      if a * a + b * b is c * c
        console.log "#{a}, #{b}, #{c}"