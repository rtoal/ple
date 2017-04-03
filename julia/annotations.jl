(function()
  local x::Int64 = 0x02
  local y = 0x02
  @assert typeof(x) == Int64  # The UInt8 was converted
  @assert typeof(y) == UInt8  # No annotations, no coversion

  # There's no conversion from String to Int64
  @assert isa(try x = "Oh no" catch (e) e end, Exception)
end)()
