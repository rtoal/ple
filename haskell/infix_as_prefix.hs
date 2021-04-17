import Control.Monad (guard)

main = do 
    guard $ foldl (*) 1 [2, 3, 4, 5] == 120
    guard $ map ((-) 20) [5, 12, 19] == [15, 8, 1]
    guard $ map (flip (-) 5) [10, 20, 30] == [5, 15, 25]
