abstract Animal
speak(a::Animal) = "$(a.name) says $(sound(a))"

type Horse <: Animal
  name
end
sound(h::Horse) = "neigh"

type Cow <: Animal
  name
end
sound(c::Cow) = "moooo"

type Sheep <: Animal
  name
end
sound(s::Sheep) = "baaaa"

s = Horse("CJ")
@assert speak(s) == "CJ says neigh"
c = Cow("Bessie")
@assert speak(c) == "Bessie says moooo"
@assert speak(Sheep("Little Lamb")) == "Little Lamb says baaaa"
