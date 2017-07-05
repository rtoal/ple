import SimpleAssert exposing (assertAll)

type alias Positioned a =
    { a | x : Float, y : Float, z : Float }

move : Positioned a -> Float -> Float -> Float -> Positioned a
move object dx dy dz =
    { object | x = object.x + dx, y = object.y + dy, z = object.z + dz}

main =
    let
        robotAtStart = { name = "Mari", x = 3, y = 8, z = -2 }
        robotAtEnd = move robotAtStart 7 -2 9
        expectedEnd = { name = "Mari", x = 10, y = 6, z = 7 }
    in
        assertAll [ robotAtEnd == expectedEnd ]
