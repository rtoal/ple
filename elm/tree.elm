import SimpleAssert exposing (assertAll)
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
            "(" ++ toString value
                ++ (foldr (++) "" <| map str children)
                ++ ")"

main =
    let
        t0 = Empty
        t1 = Node "dog" []
        t2 = Node 17 [Node 31 [], Node 53 []]
        t3 = Node 41 [t2, t2, Empty, Node 3 []]
    in
        assertAll
            [ size t0 == 0
            , size t1 == 1
            , size t3 == 8
            , str t0 == "()"
            , str t1 == "(\"dog\")"
            , str t2 == "(17(31)(53))"
            , str t3 == "(41(17(31)(53))(17(31)(53))()(3))"
            ]
