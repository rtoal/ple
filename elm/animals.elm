import SimpleAssert exposing (assertAll)

type Kind = Cow | Horse | Sheep

type alias Animal = { name : String, kind : Kind }

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

horse n = { name = n, kind = Horse }
cow n = { name = n, kind = Cow }
sheep n = { name = n, kind = Sheep }

main = assertAll
    [ "CJ says neigh" == (let h = horse("CJ") in speak h)
    , "Bessie says moooo" == (let c = cow("Bessie") in speak c)
    , "Little Lamb says baaaa" == speak (sheep "Little Lamb")
    ]
