def one
  x = 1
  [1,2,3].each {|x| y = 1}
  y
end

def two
  x, y = 1, 2
  [1,2,3].each {|x| y = 1}
  y
end

def three
  x, y = 1, 2
  [1,2,3].each {|x; y| y = 1}
  y
end

puts one rescue puts "one failed"
puts two rescue puts "two failed"
puts three rescue puts "three failed"
