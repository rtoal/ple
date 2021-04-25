import Control.Monad (guard)

type Point = (Double, Double)
type Polygon = [Point]

hypot :: Point -> Double
hypot (x, y) = sqrt $ abs (x^2 + y^2)

vertices :: Polygon -> Int
vertices = length

main = do
    guard $ hypot (3, -4) == 5
    guard $ vertices [(1, 2), (5, 10)] == 2
