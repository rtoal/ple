import Control.Monad (guard)

main = do 
    guard $ 3 * 5 == 15
    guard $ (*) 3 5 == 15
    guard $ mod 29 8 == 5
    guard $ 29 `mod` 8 == 5
    guard $ foldl (-) 1 [3,5,2,8] == -17    -- (((1-3)-5)-2)-8
    guard $ foldr (-) 1 [3,5,2,8] == -7     -- 3-(5-(2-(8-1)))
