import Text.Printf (printf)

antiParallel :: Int -> (Int,Int,Int)
antiParallel n = (if h == 0 then 12 else h, m, s)
    where t = truncate $ (fromIntegral n + 0.5) * 43200 / 11
          (h, ms) = t `divMod` 3600
          (m, s) = ms `divMod` 60

main = mapM_ (putStrLn . renderTime . antiParallel) [0..10]
    where renderTime (h,m,s) = printf "%02d:%02d:%02d" h m s
