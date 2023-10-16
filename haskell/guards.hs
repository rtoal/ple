import Control.Monad (guard)

grade :: (Num a, Ord a) => a -> [Char]
grade score 
    | score >= 90 = "A"
    | score >= 80 = "B"
    | score >= 70 = "C"
    | score >= 60 = "D"
    | otherwise   = "F"

comp :: (Ord a) => a -> a -> [Char]
comp x y 
    | x > y     = "Higher"
    | x < y     = "Lower"
    | otherwise = "Same"

quadrant :: (Ord a, Num a) => a -> a -> [Char]
quadrant x y 
    | xPositive && yPositive = "1"
    | xNegative && yPositive = "2"
    | xNegative && yNegative = "3"
    | xPositive && yNegative = "4"
    | xZero && not yZero = "Y axis"
    | not xZero && yZero = "X axis"
    | otherwise = "Origin"
    where (xPositive, xNegative, xZero) = (x > 0, x < 0, x == 0)
          (yPositive, yNegative, yZero) = (y > 0, y < 0, y == 0)

main :: IO ()
main = do
    guard $ grade 95 == "A"
    guard $ grade 85 == "B"
    guard $ grade 75 == "C"
    guard $ grade 65 == "D"
    guard $ grade 55 == "F"
    guard $ comp 5 10 == "Lower"
    guard $ comp 10 5 == "Higher"
    guard $ comp 5 5 == "Same"
    guard $ quadrant 1 1 == "1"
    guard $ quadrant (-1) 1 == "2"
    guard $ quadrant (-1) (-1) == "3"
    guard $ quadrant 1 (-1) == "4"
    guard $ quadrant 0 1 == "Y axis"
    guard $ quadrant 1 0 == "X axis"
    guard $ quadrant 0 0 == "Origin"


