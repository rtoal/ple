plusTwo = proc {|x| x + 2}
plusThree = Proc.new {|x| x + 3}
plusFour = lambda {|x| x + 4}
plusFive = -> (x) {x + 5}

# Basic Information
p [plusTwo.call(10), plusTwo.class, plusTwo.lambda?]
p [plusThree.call(10), plusThree.class, plusThree.lambda?]
p [plusFour.call(10), plusThree.class, plusFour.lambda?]
p [plusFive.call(10), plusThree.class, plusFive.lambda?]

# Argument checking
plusTwo.call(100, 200, 300)     # No problem, yikes
begin
  plusFour.call(100, 200, 300)  # Will raise an error
rescue ArgumentError
  puts 'Rescued'                # Message will be output
end

# Passing procs
a = [10, 20, 30, 40, 50]
p a.map(&plusTwo)
p a.map(&plusThree)
p a.map(&plusFour)
p a.map(&plusFive)
p a.map(&(->(x) {x * 10}))      # anonymous
p a.map &->(x) {x * 10}         # a crazier way to write it
