@assert (5√9, 17 / 5, 17 ÷ 5) == (15, 3.4, 3)
@assert iseven(sign(log2(exponent(8)))) == false
@assert 8 |> exponent |> log2 |> sign |> iseven == false
@assert [1,2,3] |> c -> map(x -> 3x+1, c) == [4, 7, 10]

@assert 5 .+ [2, 8, -2] == [7, 13, 3]
@assert [8, 13, 5] .^ 2 == [64, 169, 25]
@assert .√([9, 16, 25]) == [3, 4, 5]
@assert (1:9 .|> x -> x^2) |> filter(iseven) |> sum == 120
