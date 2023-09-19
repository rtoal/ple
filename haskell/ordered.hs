import Control.Monad (guard)

isOrdered :: (Ord a) => [a] -> Bool
isOrdered [] = True
isOrdered [_] = True
isOrdered (x:y:xs) = x <= y && isOrdered (y:xs)

main = do 
    guard $ isOrdered [] == True
    guard $ isOrdered [3] == True
    guard $ isOrdered ["a", "abb", "b"] == True
    guard $ isOrdered ["ac", "abb", "b"] == false
    guard $ isOrdered [1, 2, 3, 4, 5] == True
    guard $ isOrdered [1, 2, 3, 4, 5, 4] == False
