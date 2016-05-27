import ElmTest exposing (suite, defaultTest, runSuite, assertEqual)
import List exposing (map)

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
  runSuite <| suite "Animal Tests"
    [ defaultTest <| "CJ says neigh" `assertEqual` (let h = horse("CJ") in speak h)
    , defaultTest <| "Bessie says moooo" `assertEqual` (let c = cow("Bessie") in speak c)
    , defaultTest <| "Little Lamb says baaaa" `assertEqual` speak(sheep("Little Lamb"))
    ]
