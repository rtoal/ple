class Dog
  def bark() = "woof"
end

spot = Dog.new
spike = Dog.new

def spike.bite() = "ouch"

spot.bark
spike.bite
