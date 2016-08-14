class Dog
  def bark()
    "woof"
  end
end

spot = Dog.new
spike = Dog.new

def spike.bite()
  "ouch"
end

spot.bark
spike.bite