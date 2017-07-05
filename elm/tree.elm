import Html exposing (text)
import List exposing (map, foldr, sum, all)

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
        text <| toString <| if List.all ((==) True)
            [ (0 == size t0)
            , (1 == size t1)
            , (3 == size t2)
            , (8 == size t3)
            , ("()" == str t0)
            , ("(\"dog\")" == str t1)
            , ("(17(31)(53))" == str t2)
            , ("(41(17(31)(53))(17(31)(53))()(3))" == str t3)
            ] then () else Debug.crash ""
