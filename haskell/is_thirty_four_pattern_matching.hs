import Control.Monad (guard)

isThirtyFour :: Int -> Bool
isThirtyFour 34 = True
isThirtyFour _ = False

main = 
    do
        guard $ not (isThirtyFour 8)
        guard $ isThirtyFour 34