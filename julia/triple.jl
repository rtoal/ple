for c = 1:50, b = 1:c, a = 1:b
  if a * a + b * b == c * c
    println("$a, $b, $c")
  end
end
