import Control.Monad (guard)

(<-*->) :: Int -> Int -> Int
(<-*->) x y = 2 * x + y

(>*<) :: Int -> Int -> Int
(>*<) x y = 2 * x + y

infix 8 <-*->    -- binds tighter than multiplication
infix 2 >*<      -- binds looser than multiplication

main = do 
    guard $ (8 * 3 <-*-> 5) == 88    -- 8 * (2*3+5)
    guard $ (8 * 3 >*< 5) == 53      -- 2*(8*3) + 5
