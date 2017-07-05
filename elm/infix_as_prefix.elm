import Html exposing (text)

main = text <| toString <| if List.all ((==) True)
    [ (List.map (\x -> x + 5) [10, 20, 30] == [15, 25, 35])
    , (List.map ((+) 5) [10, 20, 30] == [15, 25, 35])
    ] then () else Debug.crash ""
