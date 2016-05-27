import ElmTest exposing (suite, defaultTest, runSuite, assertEqual)

double : List a -> List a
double list =
  case list of
    [] -> []
    x :: xs -> x :: x :: double xs

main =
  runSuite <| suite "Test the doubler"
    [ defaultTest <| [] `assertEqual` double []
    , defaultTest <| [5, 5, 5, 5] `assertEqual` double [5, 5]
    , defaultTest <| [2, 2, 5, 5, 3, 3] `assertEqual` double [2, 5, 3]
    ]
