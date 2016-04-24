import List exposing (map, sum, foldr)
import ElmTest exposing (elementRunner, suite, defaultTest, assertEqual)

type Tree a
  = Empty
  | Node a (List (Tree a))

size : Tree a -> Int
size t =
  case t of
    Empty ->
      0
    Node _ children ->
      1 + (sum <| map size children)

str : Tree a -> String
str t =
  case t of
    Empty ->
      "()"
    Node value children ->
      "(" ++ toString value ++ (foldr (++) "" <| map str children) ++ ")"

main =
  let
    t0 = Empty
    t1 = Node "dog" []
    t2 = Node 17 [Node 31 [], Node 53 []]
    t3 = Node 41 [t2, t2, Empty, Node 3 []]
  in
    elementRunner <| suite "Demonstrate Trees" <| map defaultTest
      [ 0 `assertEqual` size t0
      , 1 `assertEqual` size t1
      , 3 `assertEqual` size t2
      , 8 `assertEqual` size t3
      , "()" `assertEqual` str t0
      , "(\"dog\")" `assertEqual` str t1
      , "(17(31)(53))" `assertEqual` str t2
      , "(41(17(31)(53))(17(31)(53))()(3))" `assertEqual` str t3
      ]
