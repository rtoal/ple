@assert supertype(Int32) == Signed
@assert supertype(Signed) == Integer
@assert supertype(Integer) == Real
@assert supertype(Symbol) == Any
@assert Set(subtypes(Type)) == Set([DataType, TypeConstructor, Union])

@assert Float64 <: Real
@assert isa(subtypes(Type), Array)
@assert isa(Array, Type)
