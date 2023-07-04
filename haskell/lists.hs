import Control.Monad (guard)
import Data.List (intersperse, intercalate)

main = do
    guard $ null []                        -- is empty
    guard $ length [3,5,8,2,1] == 5
    guard $ head [3,5,8,2,1] == 3          -- first element
    guard $ tail [3,5,8,2,1] == [5,8,2,1]  -- all but first
    guard $ 3 : [5,8,2,1] == [3,5,8,2,1]   -- cons (fast)
    guard $ [3,5,8] ++ [2] == [3,5,8,2]    -- append (slow)
    guard $ take 2 [3,5,8,2,1] == [3,5]    -- first n elements
    guard $ drop 2 [3,5,8,2,1] == [8,2,1]  -- all but the first n
    guard $ init [3,5,8,2,1] == [3,5,8,2]  -- all but last
    guard $ last [3,5,8,2,1] == 1 

    -- Ranges and comprehensions
    guard $ [2..5] == [2,3,4,5]
    guard $ [x | x <- [3..8], even x] == [4, 6, 8]
    guard $ [x + y | x <- [1,2], y <- [9,0,2]] == [10,1,3,11,2,4]

    -- Splits, joins, and zips
    guard $ splitAt 3 [3,5,8,2,1] == ([3,5,8],[2,1])
    guard $ concat [[3],[5,8],[],[2,1]] == [3,5,8,2,1] 
    guard $ intersperse 0 [1,2,3] == [1,0,2,0,3]
    guard $ intercalate [0,0] [[1],[2,3]] == [1,0,0,2,3]
    guard $ zip [1,2,3] ['a','b'] == [(1,'a'),(2,'b')]

    -- Higher order functions
    guard $ takeWhile (\x -> x < 7) [3,5,8,2,1] == [3,5]
    guard $ dropWhile (not . even) [3,5,8,2,1] == [8,2,1] 
    guard $ filter (\x -> x < 7) [3,5,8,2,1] == [3,5,2,1]
    guard $ filter even [1..10] == [2,4,6,8,10]
    guard $ map succ [3,5,8,2,1] == [4,6,9,3,2]
    guard $ concatMap (\x -> [x,-x]) [1..3] == [1,-1,2,-2,3,-3]
    guard $ all even [3,5,8,2,1] == False 
    guard $ any even [3,5,8,2,1] == True
    guard $ sum [1..10] == 55 
    guard $ product [1..10] == 3628800 
