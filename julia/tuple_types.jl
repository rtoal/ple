t = (Uint8, Bool)
@assert isa(t, Type)

@assert isa((0x08, false), t)
@assert isa((0x7A, true), t)
@assert !isa(0x25, t)
@assert !isa(false, t)
