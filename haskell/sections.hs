import Control.Monad (guard)

-- The section (* 5) is the same as \x -> x * 5
-- The section (< 7) is the same as \x -> x < 7
-- The section (1 /) is the same as \x -> 1 / x
main = do
    guard $ map (* 5) [3, 5, 2] == [15, 25, 10]
    guard $ filter (< 7) [3, 5, 8, 2] == [3, 5, 2]
    guard $ map (1 /) [2, 4, 8] == [0.5, 0.25, 0.125]
