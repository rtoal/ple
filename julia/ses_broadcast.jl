function sumOfEvenSquares(a)
    sum((a[a .% 2 .== 0]).^2)
end

@assert sumOfEvenSquares(Int[]) == 0
@assert sumOfEvenSquares([1]) == 0
@assert sumOfEvenSquares([2]) == 4
@assert sumOfEvenSquares([1, 2, 3, 4, 5]) == 20
@assert sumOfEvenSquares([2, 4, 6, -8, 10]) == 220
@assert sumOfEvenSquares([1, 3, 5, 7, 9]) == 0
