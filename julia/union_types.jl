u = Union{UInt8, Bool}          # A new type
@assert typeof(u) == Union
@assert isa(u, Type)            # A union type is a type

@assert isa(0x08, u)            # Uint8 values belong
@assert isa(false, u)           # Boolean values belong
@assert isa(true, u)
@assert !isa(256, u)            # Not a UInt8, does not belong
@assert !isa((0x08, true), u)   # Tuples do not belong
