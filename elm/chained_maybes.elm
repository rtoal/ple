import Html exposing (text)
import Maybe exposing (andThen)

type Person = Alice | Bob | Chi | Dinh | Emmy | Faye | Guo

supervisor: Person -> Maybe Person
supervisor p =
    case p of
        Alice -> Nothing
        Bob -> Just Alice
        Chi -> Just Alice
        Dinh -> Just Bob
        Emmy -> Just Dinh
        Faye -> Just Emmy
        Guo -> Just Chi

bossOfBossOfBoss p =
    supervisor p |> andThen supervisor |> andThen supervisor

main = text <| toString <| if List.all (\(p, b) -> bossOfBossOfBoss p == b)
    [ (Emmy, Just Alice)
    , (Chi, Nothing)
    , (Guo, Nothing)
    , (Faye, Just Bob)
    ] then () else Debug.crash ""
