for c = 1, 50 do
  for b = 1, c do
    for a = 1, b do
      if a * a + b * b == c * c then
        print(string.format("%d, %d, %d", a, b, c))
      end
    end
  end
end
