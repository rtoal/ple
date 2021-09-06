import Control.Monad (guard)

data Response a = Error [Char] | Ok a deriving (Show, Eq)

squareRoot x | x < 0 = Error "negative" | otherwise = Ok (sqrt x)

main = do 
    guard $ squareRoot 9 == Ok 3
    guard $ squareRoot 100.0 == Ok 10.0
    guard $ squareRoot (-4) == Error "negative"
