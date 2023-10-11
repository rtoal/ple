@assert supertype(Int32) == Signed
@assert supertype(Symbol) == Any
@assert supertype(DataType) == Type
@assert Float64 <: Real
@assert BigInt <: Number
