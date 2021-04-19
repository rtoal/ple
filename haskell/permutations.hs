import System.Environment (getArgs)
import Data.List (permutations, intercalate)

main = getArgs >>= (mapM_ (putStrLn . intercalate "\t") . permutations)
