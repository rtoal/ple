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
println(speak(s))
c = Cow("Bessie")
println(speak(c))
println(speak(Sheep("Little Lamb")))
