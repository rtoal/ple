abstract type Animal end
speak(a::Animal) = "$(a.name) says $(sound(a))"

struct Horse <: Animal
  name
end
sound(h::Horse) = "neigh"

struct Cow <: Animal
  name
end
sound(c::Cow) = "moooo"

struct Sheep <: Animal
  name
end
sound(s::Sheep) = "baaaa"

s = Horse("CJ")
@assert speak(s) == "CJ says neigh"
c = Cow("Bessie")
@assert speak(c) == "Bessie says moooo"
@assert speak(Sheep("Little Lamb")) == "Little Lamb says baaaa"
