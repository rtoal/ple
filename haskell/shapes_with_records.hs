import Control.Monad (guard)

data Shape
    = Circle {radius :: Float}
    | Rectangle {width :: Float, height :: Float}
    deriving (Show)

area :: Shape -> Float
area (Circle {radius = r}) = pi * r * r
area (Rectangle {width = w, height = h}) = w * h

perimeter :: Shape -> Float
perimeter (Circle {radius = r}) = 2 * pi * r
perimeter (Rectangle {width = w, height = h}) = 2 * (w + h)

main = 
    let
        c = Circle {radius = 10} 
        r = Rectangle {width = 8, height = 2}
    in do
        guard $ radius c == 10
        guard $ area c == 100 * pi
        guard $ perimeter c == 20 * pi
        guard $ width r == 8 && height r == 2
        guard $ (area r, perimeter r) == (16, 20)
        guard $ show c == "Circle {radius = 10.0}"
        guard $ show r == "Rectangle {width = 8.0, height = 2.0}"
