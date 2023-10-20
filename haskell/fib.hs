import GHC.Conc

fib :: Int -> Int
fib n
    | n <= 1 = n
    | otherwise = par a (pseq b (a + b))
                     where a = fib (n-1)
                           b = fib (n-2)

main = print (fib 45)
