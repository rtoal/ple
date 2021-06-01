import System.IO (getContents)
import Data.Text (pack, unpack, splitOn)
import Data.List (sortOn)
import Text.Printf (printf)

splitOnComma :: String -> [String]
splitOnComma = map unpack . splitOn (pack ",") . pack

frequent :: [String] -> Bool
frequent (_:_:games:_) = ((read games)::Int) >= 15

data Player = 
    Player { name :: String, team :: String, ppg :: Float }

toPlayer :: [String] -> Player        
toPlayer (team:name:games:points:_) = 
    let ppg = ((read points)::Float) / ((read games)::Float) in
        Player { name = name, team = team, ppg = ppg }

toString :: Player -> String
toString player = 
    printf "%-22s%-4s%8.2g" (name player) (team player) (ppg player)

main =
    getContents >>=
        mapM_ putStrLn . map toString . take 10 . reverse . 
        sortOn ppg .  map toPlayer . filter frequent .
        map splitOnComma . lines