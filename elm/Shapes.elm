module Shapes exposing (..)

type Shape
    = Circle Float
    | Rectangle Float Float

area : Shape -> Float
area s =
    case s of
        Circle r ->
            pi * r * r
        Rectangle h w ->
            h * w

perimeter : Shape -> Float
perimeter s =
    case s of
        Circle r ->
            2 * pi * r
        Rectangle h w ->
            2 * (h + w)
