type alias Person =
    { name : String, id : Int }

type alias Widget =
    { name : String, id : Int }

type PrimaryColor
    = Red
    | Blue
    | Green

type alias PixelColor =
    PrimaryColor

p : Person
p = { name = "Alice", id = 239 }

w : Widget
w = p           -- Disappointing perhaps, but legal

g : PixelColor
g = Green
