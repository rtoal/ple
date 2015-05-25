class Animal
  def initialize(name)
    @name = name
  end
  def speak()
    puts "#{@name} says #{sound()}"
  end
end

class Cow < Animal
  def sound()
    "moooo"
  end
end

class Horse < Animal
  def sound()
    "neigh"
  end
end

class Sheep < Animal
  def sound()
    "baaaa"
  end
end

if __FILE__ == $0
  s = Horse.new "CJ"
  s.speak()
  c = Cow.new("Bessie")
  c.speak()
  Sheep.new("Little Lamb").speak()
end
