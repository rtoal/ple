def conversation()
  puts 'Calling a lambda proc'
  (lambda {return}).call             # Returns from the proc
  puts 'Calling a non-lambda proc'
  (proc {return}).call               # Returns from conversation()
  puts 'This does not appear'
end

conversation
