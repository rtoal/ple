# An illustration of invariance in Julia Sets.

abstract Animal
type Cat <: Animal name end
type Dog <: Animal name end

dogs = Set([Dog("rex"), Dog("spot")])
@assert typeof(dogs) == Set{Dog}      # Julia infers this
@assert isa(dogs, Set{Dog})
@assert !isa(dogs, Set{Animal})       # Surprised?

@assert (try
  local animals::Set{Animal} = dogs   # Not allowed!
catch
  1
end) == 1