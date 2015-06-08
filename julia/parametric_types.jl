function hastype(value, expected)
  assert(typeof(value) == expected)
end

hastype([5,3], Array{Int64,1})
hastype(8.75im, Complex{Float64})
hastype([], Array{None, 1})
hastype([3, "abc"], Array{Any, 1})
hastype([1 0; 0 1], Array{Int64, 2})
