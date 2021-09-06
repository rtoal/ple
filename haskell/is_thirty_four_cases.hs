import Control.Monad (guard)

isThirtyFour :: Int -> Bool
isThirtyFour num = 
    case num of 
        34 -> True
        otherwise -> False

main = do
    guard $ not (isThirtyFour 8)
    guard $ isThirtyFour 34