import Control.Monad (guard)

data Shape
    = Circle Float
    | Rectangle Float Float

area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

perimeter :: Shape -> Float
perimeter (Circle r) = 2 * pi * r
perimeter (Rectangle w h) = 2 * (w + h)

main = do
    guard $ area (Circle 10) == 100 * pi
    guard $ perimeter (Circle 10) == 20 * pi
    guard $ area (Rectangle 2 8) == 16
    guard $ perimeter (Rectangle 2 8) == 20
