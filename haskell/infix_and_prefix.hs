import Control.Monad (guard)

main = do 
    guard $ 3 * 5 == 15
    guard $ (*) 3 5 == 15
    guard $ mod 29 8 == 5
    guard $ 29 `mod` 8 == 5
