import Control.Monad (guard)

double :: [a] -> [a]
double [] = []
double (x : xs) = x : x : double xs

main = do
    guard $ (double []::[Int]) == []
    guard $ double [5, 5] == [5, 5, 5, 5]
    guard $ double [2, 5, 3] == [2, 2, 5, 5, 3, 3]
