for c in [1..40]
  for b in [1...c]
    for a in [1...b]
      console.log "#{a}, #{b}, #{c}" if a * a + b * b is c * c
