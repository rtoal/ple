for c = 1:40, b = 1:c-1, a = 1:b-1
  if a * a + b * b == c * c
    println("$a, $b, $c")
  end
end
