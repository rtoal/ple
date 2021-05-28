import System.IO (getContents)
import Data.Text (pack, unpack, splitOn)
import Data.Char (toUpper)
data Player = 
    Player 
        { name :: String
        , team :: String
        , ppg :: Float
        } deriving (Show)
toPlayer line = 
    let components = (map unpack . splitOn (pack ",") . pack) line in
        Player 
            { name = components !! 1
            , team = components !! 0
            , ppg = (read (components !! 3)::Float) / (read (components !! 2)::Float)
            }
toString player = 
    name player ++ "\t" ++ team player ++ "\t" ++ (show $ ppg player)
main = do
    getContents >>= mapM_ (putStrLn  . toString . toPlayer) . lines