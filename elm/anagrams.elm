import String exposing (toList, fromList)
import List exposing (concatMap,map,foldr)
import Graphics.Element exposing (show, flow, down)


insertEverywhere : a -> List a -> List (List a)
insertEverywhere x xs =
  case xs of
    [] -> [[x]]
    (y::ys) -> (x::y::ys) :: map ((::)y) (insertEverywhere x ys)

perms : List a -> List (List a)
perms = foldr (concatMap << insertEverywhere) [[]]

anagrams s =
  s |> toList |> perms |> map fromList

main =
  anagrams "abcd" |> map show |> flow down
