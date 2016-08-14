# 3 component types
@assert typeof((4, false, [])) == Tuple{Int64, Bool, Array{Any, 1}}
@assert isa(false, Union{Int64, Bool, Array{Any, 1}})

# 1 component type
@assert typeof((5,)) == Tuple{Int64}
@assert isa(false, Union{Bool})
@assert Bool != Tuple{Bool}           # Because false != (false,)
@assert Bool == Union{Bool}           # Do you see why?

# No component types
@assert typeof(()) == Tuple{}