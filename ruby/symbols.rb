status = :open
status = :closed
puts status              # closed
puts status.class        # Symbol
puts 5.abs               # 5
puts -5.send(:abs)       # 5
