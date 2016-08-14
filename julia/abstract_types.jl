@assert super(Int32) == Signed
@assert super(Signed) == Integer
@assert super(Integer) == Real
@assert super(Symbol) == Any
@assert Set(subtypes(Type)) == Set([DataType, TypeConstructor, Union])

@assert Float64 <: Real
@assert isa(subtypes(Type), Array)
@assert isa(Array, Type)
