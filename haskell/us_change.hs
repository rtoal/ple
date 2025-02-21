import Control.Monad (guard)

change :: Int -> Either String (Int, Int, Int, Int)
change amount
    | amount < 0 = Left "amount cannot be negative"
    | otherwise =
        let
            (quarters, afterQuarters) = amount `divMod` 25
            (dimes, afterDimes) = afterQuarters `divMod` 10
            (nickels, pennies) = afterDimes `divMod` 5
        in
            Right (quarters, dimes, nickels, pennies)

main :: IO ()
main = do
    guard $ change 0 == Right (0, 0, 0, 0)
    guard $ change 1 == Right (0, 0, 0, 1)
    guard $ change 5 == Right (0, 0, 1, 0)
    guard $ change 6 == Right (0, 0, 1, 1)
    guard $ change 10 == Right (0, 1, 0, 0)
    guard $ change 16 == Right (0, 1, 1, 1)
    guard $ change 25 == Right (1, 0, 0, 0)
    guard $ change 41 == Right (1, 1, 1, 1)
    guard $ change 100 == Right (4, 0, 0, 0)
    guard $ change 100000000 == Right (4000000, 0, 0, 0)
