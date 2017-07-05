import SimpleAssert exposing (assertAll)

main = assertAll
    [ List.foldl (*) 1 [2, 3, 4, 5] == 120
    , List.map ((-) 20) [5, 12, 19] == [15, 8, 1]
    , List.map (flip (-) 5) [10, 20, 30] == [5, 15, 25]
    ]
