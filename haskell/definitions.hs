import Control.Monad (guard)

dozen :: Int
dozen = 12

isMultipleOfFive :: Int -> Bool
isMultipleOfFive n = mod n 5 == 0

-- Input is a tuple, output is a value (uncurried)
average :: (Double, Double) -> Double
average (x, y) = (x + y) / 2.0

-- Input is a value, output is a function (curried)
mean :: Double -> (Double -> Double)
mean x y = (x + y) / 2.0

main = do
    guard $ 5 * dozen == 60
    guard $ isMultipleOfFive 100
    guard $ average (3.5, 10) == 6.75
    guard $ mean 3.5 10 == 6.75
