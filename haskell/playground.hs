import System.IO (getContents)
import Data.Text (pack, unpack, splitOn)
import Data.List (sortBy)

data Player = 
    Player 
        { name :: String
        , team :: String
        , ppg :: Float
        } deriving (Show)

toPlayer :: String -> Player        
toPlayer line = 
    let components = (map unpack . splitOn (pack ",") . pack) line in
        Player 
            { name = components !! 1
            , team = components !! 0
            , ppg = (read (components !! 3)::Float) / (read (components !! 2)::Float)
            }

toString :: Player -> String
toString player = 
    name player ++ "\t" ++ team player ++ "\t" ++ (show $ ppg player)

sortPlayers :: Player -> (Player -> Ordering)
sortPlayers player1 player2
    | (ppg player1) < (ppg player2) = GT
    | (ppg player1) > (ppg player2) = LT
    | (ppg player1) == (ppg player2) = compare (ppg player1) (ppg player2)

checkGames :: [String] -> Bool
checkGames player 
    | (read (player !! 2)::Float) >= 15 = True
    | otherwise = False
    

splitLines 

-- get into lines, filter checkGames, toPlayer, sortBy sortPlayers, take 10, map to strings and output them     
main = do
    getContents >>= mapM_ putStrLn players
            where players = map . lines
            

    