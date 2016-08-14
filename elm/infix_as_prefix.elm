import ElmTest exposing (runSuite, suite, test, assertEqual)

main =
  let (input, expected) = ([10, 20, 30], [15, 25, 35]) in
    runSuite <| suite "Use + in prefix position"
      [ test "Arrow" (List.map (\x->x+5) input `assertEqual` expected)
      , test "Prefix" (List.map ((+)5) input `assertEqual` expected)
      ]
