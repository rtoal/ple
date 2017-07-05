import Html exposing (text)

double : List a -> List a
double list =
    case list of
        [] -> []
        x :: xs -> x :: x :: double xs

main = text <| toString <| if List.all ((==) True)
    [ double [] == []
    , double [5, 5] == [5, 5, 5, 5]
    , double [2, 5, 3] == [2, 2, 5, 5, 3, 3]
    ] then () else Debug.crash ""
