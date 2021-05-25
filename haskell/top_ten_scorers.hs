import System.IO (getContents)
import Data.Text (pack, splitOn)
import Data.List

data Player = Player { name :: String
                 , team :: String
                 , ppg :: Int
                 } deriving (Show)


getTopScores :: [[String]] -> [Player]
getTopScores players topScoringPlayers = 
    case (lookup player players) of 
        (player !! 3)::Int players) >= 15 -> topScores : Player ((player !! 1), (player !! 0), (ceiling (((player !! 3)::RealFrac)/((player !! 2)::RealFrac))))
        False -> return ()
    return topScores


sortPlayers :: [Player] -> [Player]
sortPlayers player1 player2
    | (ppg player1) < (ppg player2) = GT
    | (ppg player1) > (ppg player2) = LT
    | (ppg player1) == (ppg player2) = compare (ppg player1) (ppg player2)

main = do
  topScorers = []
  getContents >>= (mapM_ (putStrLn . show . splitOn (pack ",") . pack) . lines)
  players <- getContents
  getTopScores players topScorers
  sortBy sortPlayers topScorers
  take 10 topScorers
    
-- reader.on("line", line => {
--   let [team, name, games, points] = line.split(",")
--   if (games >= 15) {
--     players.push({ name, team, ppg: points / games })
--   }
-- })
-- reader.on("close", () => {
--   const topTen = players.sort((p1, p2) => p2.ppg - p1.ppg).slice(0, 10)
--   for (let { name, team, ppg } of topTen) {
--     console.log(
--       `${name.padEnd(22)}${team.padEnd(4)}${ppg.toFixed(2).padStart(8)}`
--     )
--   }
-- })

