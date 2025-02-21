import Control.Monad (guard)

sumOfEvenSquares :: [Int] -> Int
sumOfEvenSquares = sum . map (^ 2) . filter even

main = do 
    guard $ sumOfEvenSquares [] == 0
    guard $ sumOfEvenSquares [1] == 0
    guard $ sumOfEvenSquares [8] == 64
    guard $ sumOfEvenSquares [1, 2, 3, -4] == 20
    guard $ sumOfEvenSquares [1, 3, 5, 7] == 0
    guard $ sumOfEvenSquares [2, 4, 6, 8] == 120

