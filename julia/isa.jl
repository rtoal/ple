@assert typeof(88) == Int64
for t in [Int64, Integer, Signed, Real, Number, Any]
  @assert isa(88, t)
end
