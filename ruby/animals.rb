class Animal
  def initialize(name)
    @name = name
  end
  def speak()
    "#{@name} says #{sound()}"
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
  fail unless s.speak == "CJ says neigh"
  c = Cow.new("Bessie")
  fail unless c.speak == "Bessie says moooo"
  fail unless Sheep.new("Little Lamb").speak == "Little Lamb says baaaa"
end
