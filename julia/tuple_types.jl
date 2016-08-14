t = Tuple{UInt8, Bool}          # a tuple type
@assert typeof(t) == DataType   # tuple types aren't special
@assert isa(t, Type)            # tuple types are types

@assert isa((0x08, false), t)   # tuples of the right type belong
@assert isa((0x7A, true), t)
@assert !isa((3, "wrong"), t)   # tuples of the wrong type do not
@assert !isa(0x25, t)           # non-tuples do not belong
