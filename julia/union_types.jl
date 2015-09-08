u = Union(Uint8, Bool)
@assert typeof(u) == UnionType

@assert isa(0x08, u)
@assert isa(false, u)
@assert isa(true, u)
@assert !isa(256, u)
@assert !isa((0x08, true), u)
