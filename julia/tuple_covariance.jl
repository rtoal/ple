t = (3, "hello")
@assert typeof(t) == Tuple{Int64, String}
@assert isa(t, Tuple{Real, String})
@assert isa(t, Tuple{Integer, AbstractString})
@assert isa(t, Tuple{Number, Any})

@assert Tuple{Symbol, Float16, Union{}} <: Tuple{Any, Real, Any}
