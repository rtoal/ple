import Control.Monad (guard)

zero x = 0

main = do
    guard $ zero "ignore me" == 0
    guard $ zero (1 `mod` 0) == 0   -- this is fine!
