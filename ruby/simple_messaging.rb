# Zero-argument messages
fail unless 5.send(:abs) == 5
fail unless 5.send('abs') == 5
fail unless 5.abs == 5

# A one-argument method
fail unless 5.send(:+, 3) == 8
fail unless 5.send('+', 3) == 8
fail unless 5.+(3) == 8
fail unless 5 + 3 == 8

# Messages can be stored in variables
operator = '-'
fail unless 5.send(operator, 2) == 3
