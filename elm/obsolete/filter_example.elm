module Main exposing (..)

import Graphics.Element exposing (Element, show)
import List exposing (map)
import String exposing (toList)
import Keyboard
import Char


main : Signal Element
main =
    let
        isVowel code =
            List.member code (map Char.toCode (toList "aeiou"))

        vowelSignal =
            Signal.filter isVowel 0 Keyboard.presses
    in
        Signal.map show vowelSignal
