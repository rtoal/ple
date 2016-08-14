import ElmTest exposing (runSuite, suite, defaultTest, assertEqual)
import List exposing (map)
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
  supervisor p `andThen` supervisor `andThen` supervisor

main =
  runSuite <| suite "Test execution" <| map defaultTest
    [ Just Alice `assertEqual` bossOfBossOfBoss Emmy
    , Nothing `assertEqual` bossOfBossOfBoss Chi
    , Nothing `assertEqual` bossOfBossOfBoss Guo
    , Just Bob `assertEqual` bossOfBossOfBoss Faye
    ]
