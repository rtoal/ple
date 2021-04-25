import Control.Monad

data Point
    = Point { x :: Double, y :: Double }
data Polygon
    = Polygon { vertices :: [Point] }

hypot :: Point -> Double
hypot p = sqrt $ abs ((x p)^2 + (y p)^2)

main =
    let
        southEast = Point {x=3, y= -4}
        origin = Point {x=0, y=0}
        south = Point {x=0, y= -4}
        triangle = Polygon {vertices=[origin, southEast, south]}
    in do
        guard $ hypot southEast == 5
        guard $ length (vertices triangle) == 3
