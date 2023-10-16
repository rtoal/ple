import GHC.Conc

fib :: Int -> Int
fib n
    | n <= 1 = 1
    | otherwise = par a (seq b (a + b + 1))
                     where a = fib (n-1)
                           b = fib (n-2)

main = print (fib 46)
