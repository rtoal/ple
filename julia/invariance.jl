# An illustration of invariance in Julia Sets.

abstract type Animal end
struct Cat <: Animal name end
struct Dog <: Animal name end

dogs = Set([Dog("rex"), Dog("spot")])
@assert typeof(dogs) == Set{Dog}      # Julia infers this
@assert isa(dogs, Set{Dog})
@assert !isa(dogs, Set{Animal})       # Surprised?

function something(animals::Set{Animal}) end

@assert (try
  something(dogs)                     # Not allowed!
catch e
  1
end) == 1