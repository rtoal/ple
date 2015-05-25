puts 5.send(:abs)       # 5
puts 5.abs              # 5

puts 5.send(:+, 3)      # 8
puts 5.+(3)             # 8
puts 5 + 3              # 8
