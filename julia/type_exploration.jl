@assert supertype(Int32) == Signed
@assert supertype(Symbol) == Any
@assert Float64 <: Real             # subtype considers all ancestors
@assert Bool <: Bool                # subtype is reflexive
@assert Number >: BigInt            # supertype
@assert typeof(88) == Int64         # Int64 is the default integer type
@assert Union{} <: Nothing          # Union{} is a subtype of every type
@assert !(Int32 <: Int64)
for t in [Int64, Integer, Signed, Real, Number, Any]
    # Example of membership in multiple types
    @assert isa(88, t)
end
