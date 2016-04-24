import Graphics.Element exposing (Element)
import ElmTest exposing (elementRunner, suite, test, assertEqual)
import Date

--
a = {name = "Alice"}
b = {name = "Bob", supervisor = a}
c = {a | birthday = Date.fromString "1998-12-31"}

main : Element
main =
  elementRunner <| suite "Exploring records"
    [ test "one" <| .name a `assertEqual` "Alice"
    , test "two" <| .supervisor b `assertEqual` a
    ]
