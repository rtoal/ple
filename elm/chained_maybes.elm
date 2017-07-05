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
    p |> supervisor |> andThen supervisor |> andThen supervisor

main = text <| toString <| if List.all ((==) True)
    [ bossOfBossOfBoss Emmy == Just Alice
    , bossOfBossOfBoss Chi == Nothing
    , bossOfBossOfBoss Guo == Nothing
    , bossOfBossOfBoss Faye == Just Bob
    ] then () else Debug.crash ""
