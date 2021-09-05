import Control.Monad (guard)

main =
    do
        guard $ map (* 5) [3,8,2] == [15,40,10]
        guard $ filter (< 7) [3,5,8,2,1] == [3,5,2,1]
