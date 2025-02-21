function sumOfEvenSquares(a) 
    sum(x -> x^2, filter(x -> x % 2 == 0, a), init = 0)
end

@assert sumOfEvenSquares([]) == 0
@assert sumOfEvenSquares([1]) == 0
@assert sumOfEvenSquares([2]) == 4
@assert sumOfEvenSquares([1, 2, 3, 4, 5]) == 20
@assert sumOfEvenSquares([2, 4, 6, -8, 10]) == 220
@assert sumOfEvenSquares([1, 3, 5, 7, 9]) == 0
