@assert typeof(1:10) == UnitRange{Int64}
@assert typeof(0x5 // 0x22) == Rational{UInt8}
@assert typeof(5 // 34) == Rational{Int64}
@assert typeof(8.75im) == Complex{Float64}
@assert typeof(e) == Irrational{:e}
@assert typeof([5,3]) == Array{Int64,1}
@assert typeof([3, "abc"]) == Array{Any, 1}
@assert typeof([]) == Array{Any, 1}
@assert typeof([1 0; 0 1]) == Array{Int64, 2}
@assert typeof(Set(4)) == Set{Int64}
@assert typeof(Set(['3', '$'])) == Set{Char}
