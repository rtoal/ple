data PrimaryColor = Red | Green | Blue
data Shape = Circle Float | Rectangle Float Float
data Response a = Ok a | Error String
data Tree a = Leaf a | Internal a [Tree a]

type Point = (Float, Float)
type Polygon = [Point]

size :: Tree a -> Int
size (Leaf _) = 1
size (Internal _ children) = 1 + foldr (+) 0 (map size children)

main =
  let
    t = Internal 7 [Leaf 2, Internal 3 [Leaf 9, Leaf 8, Leaf 1]]
  in
    print (size t == 6 || error "fail")
