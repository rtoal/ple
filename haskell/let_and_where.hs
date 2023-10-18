import Control.Monad (guard)

-- These three function bodies are equivalent!
a = let x = 5 in x + 3
b = x + 3 where x = 5
c = (\x -> x + 3) 5

main = do
    guard $ a == 8
    guard $ b == 8
    guard $ c == 8
