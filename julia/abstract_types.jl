@assert super(Int32) == Signed
@assert super(Signed) == Integer
@assert super(Integer) == Real
@assert super(Symbol) == Any
@assert subtypes(Type) == {DataType, TypeConstructor, UnionType}

@assert Float64 <: Real
@assert isa(7, Signed) and isa(7, Number)
@assert isa(subtypes(Type), Array)
@assert isa(Array, Type)
