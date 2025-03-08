fun main()
  for(1,40) fn(c)
    for(1,c) fn(b)
      for(1,b) fn(a)
        if a * a + b * b == c * c then 
          println(show(a) ++ ", " ++ show(b) ++ ", " ++ show(c))