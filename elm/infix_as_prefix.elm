import Graphics.Element exposing (Element)
import ElmTest exposing (elementRunner, suite, test, assertEqual)

main : Element
main =
  let (input, expected) = ([10, 20, 30], [15, 25, 35]) in
    elementRunner <| suite "Use + in prefix position"
      [ test "Arrow" (List.map (\x->x+5) input `assertEqual` expected)
      , test "Prefix" (List.map ((+)5) input `assertEqual` expected)
      ]
