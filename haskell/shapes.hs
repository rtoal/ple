import Control.Monad (guard)

data Shape
    = Circle Float
    | Rectangle Float Float

area :: Shape -> Float
area s =
    case s of
        Circle r -> pi * r * r
        Rectangle h w -> h * w

perimeter :: Shape -> Float
perimeter s =
    case s of
        Circle r ->
            2 * pi * r
        Rectangle h w ->
            2 * (h + w)

main = do
    guard $ area (Circle 10) == (100 * pi)
    guard $ perimeter (Circle 10) == (20 * pi)
    guard $ area (Rectangle 2 8) == 16
    guard $ perimeter (Rectangle 2 8) == 20
