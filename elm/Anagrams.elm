import String exposing (toList, fromList)
import List exposing (concatMap,map,foldr,repeat)
import Signal exposing (Address)
import Html exposing (Html, Attribute, div, text, input)
import Html.Attributes exposing (placeholder, value, maxlength)
import Html.Events exposing (on, targetValue)
import StartApp.Simple as StartApp

insertEverywhere : a -> List a -> List (List a)
insertEverywhere x xs =
  case xs of
    [] -> [[x]]
    (y::ys) -> (x::y::ys) :: map ((::)y) (insertEverywhere x ys)

permutations : List a -> List (List a)
permutations = foldr (concatMap << insertEverywhere) [[]]

anagrams s =
  s |> toList |> permutations |> map fromList

main =
  StartApp.start { model = "", view = view, update = update }

update newStr oldStr =
  newStr

view : Address String -> String -> Html
view address string =
  div []
    ((input
      [ placeholder "Text to reverse"
      , value string
      , maxlength 6
      , on "input" targetValue (Signal.message address)
      ]
      []) :: map (\s -> div [] [text s]) (anagrams string))
