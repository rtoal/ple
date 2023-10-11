x::Int64 = 0x02
y = 0x02
@assert typeof(x) == Int64  # The UInt8 was converted
@assert typeof(y) == UInt8  # No annotations, no coversion

# x = "Oh no" # ERROR: Cannot convert String to Int64
