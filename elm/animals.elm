import Graphics.Element exposing (Element, show, flow, down)
import List exposing (map)

--import ElmTest exposing (elementRunner, suite, test, assertEqual)

type Kind = Cow | Horse | Sheep

type alias Animal
  = {name : String, kind : Kind}

speak : Animal -> String
speak a = a.name ++ " says " ++ sound a

sound : Animal -> String
sound a =
  case a.kind of
    Cow ->
      "moooo"
    Horse ->
      "neigh"
    Sheep ->
      "baaaa"

horse n = {name = n, kind = Horse}
cow n = {name = n, kind = Cow}
sheep n = {name = n, kind = Sheep}

main =
  flow down <| map show
    [ (let h = horse("CJ") in speak h)
    , (let c = cow("Bessie") in speak c)
    , speak(sheep("Little Lamb"))
    ]

