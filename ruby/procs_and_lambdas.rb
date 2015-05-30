plusTwo = proc {|x| x + 2}
plusThree = Proc.new {|x| x + 3}
plusFour = lambda {|x| x + 4}
plusFive = -> (x) {x + 5}

# How do we call them? What are they? Regular or lambda?
p [plusTwo.call(10), plusTwo.class, plusTwo.lambda?]
p [plusThree.call(10), plusThree.class, plusThree.lambda?]
p [plusFour.call(10), plusThree.class, plusFour.lambda?]
p [plusFive.call(10), plusThree.class, plusFive.lambda?]

plusTwo.call(100, 200, 300)     # Extra args? No problem!
begin
  plusFour.call(100, 200, 300)  # But it's a problem here!
rescue ArgumentError
  puts 'Rescued'                # Message will be output
end

a = [10, 20, 30, 40, 50]
p a.map(&plusTwo)               # All passed the same way
p a.map(&plusThree)
p a.map(&plusFour)
p a.map(&plusFive)
p a.map(&(->(x) {x * 10}))      # anonymous procs!
p a.map &->(x) {x * 10}         # Parens optional here too
