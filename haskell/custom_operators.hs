import Control.Monad (guard)

fibonacci n
           | n == 0 = 0 -- handles the first base case that n is equal to 0 
           | n <= 2 = 1 -- handles the second base case that n is less than or equal to 2 
           | otherwise = (fibonacci (n - 2)) + (fibonacci (n - 1)) -- otherwise, makes two recursive calls, where you find the next value of the fibonacci sequence once 2 is subtracted from n and when 1 is subtracted from n and finding the sum of those two values

fibonacciToAPower nthFibonacciNumber power  = (fibonacci nthFibonacciNumber) ^ power -- finds the nth fibonacci number and finds the nth power of that number, based on what is passed to the function

factorial n = product [1..n] -- this works for all cases including 0, since product of [] is 1, and the result of the range [1..0] is just the empty list

factorialToAPower nthFactorial power = (factorial nthFactorial) ^ power -- finds the nth factorial and finds the nth power of that number, based on what is passed to the function

-- (^~) :: a -> a -> a
-- b ^~ n = fibonacciToAPower n b
-- infix ^~ 8 


-- (!~) :: a -> a -> a
-- b !~ n = factorialToAPower n b
-- infix !~ 8 


main = 
    do 
        guard $ fibonacci 0 == 0
        guard $ fibonacci 1 == 1
        guard $ fibonacci 2 == 1
        guard $ fibonacci 3 == 2
        guard $ fibonacci 4 == 3 
        guard $ fibonacci 5 == 5
        guard $ fibonacci 6 == 8
        guard $ fibonacci 7 == 13
        guard $ fibonacci 8 == 21
        guard $ fibonacciToAPower 2 3 == 1
        guard $ fibonacciToAPower 3 3 == 8 
        guard $ factorial 0 == 1
        guard $ factorial 1 == 1
        guard $ factorial 2 == 2
        guard $ factorial 3 == 6
        guard $ factorial 4 == 24
        guard $ factorialToAPower 4 2 == 576
        guard $ factorialToAPower 1 0 == 1