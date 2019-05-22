times(x::Number, y::Number) = x * y
times(x::AbstractArray{T,1}, n::Number) where {T<:Number} = x .* n
times(n::Number, x::AbstractArray{T,1}) where {T<:Number} = x .* n
times(s::AbstractString, n::Unsigned) = repeat(s, n)

@assert times(5, -2.5) == -12.5
@assert times([1.0, 5, 2//3], 3) == [3.0, 15, 2]
@assert times(3, [1.0, 5, 0]) == [3.0, 15, 0]
@assert times("ho", UInt64(3)) == "hohoho"
