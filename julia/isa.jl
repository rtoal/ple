@assert typeof(88) == Int64    # because Int64 is concrete
@assert isa(88, Signed)        # isa works for all types
@assert isa(88, Integer)
@assert isa(88, Real) and isa(88, Number)