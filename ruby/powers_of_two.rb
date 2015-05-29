def powers_of_two(limit)
  x = 1
  while x <= limit
    yield x
    x += x
  end
end

powers_of_two 90 do |x|
  puts x
end


