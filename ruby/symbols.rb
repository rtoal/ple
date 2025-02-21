status = rand() > 0.5 ? :open : :closed
puts status.class        # Symbol
puts status              # ok to display as string

puts -5.abs              # method call
puts -5.send(:abs)       # can call through symbol
op = :abs
puts 5.send(op)          # can call through variable
puts 5.send(:+, 3)       # symbols need not be alphanumeric
