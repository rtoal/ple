import Control.Monad (guard)

dozen :: Int
dozen = 12

isMultipleOfFive :: Int -> Bool
isMultipleOfFive n = mod n 5 == 0

average :: (Double, Double) -> Double
average (x, y) = (x + y) / 2.0

main = do
    guard $ 5 * dozen == 60
    guard $ isMultipleOfFive 100
    guard $ not $ isMultipleOfFive $ -22
    guard $ average (3.5, -10) == 6.75
