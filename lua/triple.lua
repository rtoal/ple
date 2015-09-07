for c = 1, 40 do
  for b = 1, c-1 do
    for a = 1, b-1 do
      if a * a + b * b == c * c then
        print(string.format("%d, %d, %d", a, b, c))
      end
    end
  end
end
