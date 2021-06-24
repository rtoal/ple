import Control.Monad (guard)

fibonacci n
           | n == 0 = 0
           | n <= 2 = 1
           | otherwise = (fibonacci (n - 2)) + (fibonacci (n - 1))

fibonacciToAPower power fibonacciBase = (fibonacci fibonacciBase) ^ power

-- (~) :: a -> a
-- ~ n = fibonacci n 
-- infix ~ 7 

-- (^~) :: a -> a -> a
-- b ^~ n = fibonacciToAPower n b
-- infix ^~ 8 

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
