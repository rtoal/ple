@assert supertype(Int32) == Signed
@assert supertype(Signed) == Integer
@assert supertype(Integer) == Real
@assert supertype(Symbol) == Any
@assert supertype(DataType) == Type
@assert supertype(Union) == Type
@assert supertype(UnionAll) == Type

@assert Float64 <: Real
@assert isa(Array, Type)
