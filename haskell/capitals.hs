import Control.Monad (guard)
import Data.List

capitals :: [(String, String)]
capitals =
    [ ("CA", "Sacramento")
    , ("HI", "Honolulu")
    , ("WA", "Olympia")
    ]

tellMeAbout :: String -> String
tellMeAbout state =
    case (lookup state capitals) of
        Just city -> "The capital of " ++ state ++ " is " ++ city
        Nothing -> "I don't know anything about " ++ state

main :: IO ()
main = do
    guard $ tellMeAbout "HI" == "The capital of HI is Honolulu"
    guard $ tellMeAbout "MA" == "I don't know anything about MA"
