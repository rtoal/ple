class Cow
  def initialize(name : String) @name = name end
  def speak() "Moooo, my name is #{@name}" end
end

class Sheep
  def initialize(name : String) @name = name end
  def speak() "Baaaa, my name is #{@name}" end
end

alias Animal = Cow | Sheep

a : Animal = Cow.new "Bessie"
a = Sheep.new "Little Lamb"
print a.speak
