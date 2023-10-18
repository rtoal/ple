loggedSquare (x, log) = (x * x, log ++ ["Squared " ++ show x])
loggedInc (x, log) = (x + 1, log ++ ["Incremented " ++ show x])
loggedDouble (x, log) = (x * 2, log ++ ["Doubled " ++ show x])

wrap x = (x, [])
logged f (x, log) = let (y, line) = f x in (y, log ++ [line])

-- data Counted a = Counted a Int deriving (Show)
-- instance Monad Counted where
--   return x = Counted x 0
--   (>>=) (Counted x log) f = Counted (f x) (log + 1)


data Logged a = Logged (a,[String]) deriving (Show)

inject :: a -> Logged a
inject x = Logged (x, [])

(--->) :: Logged a -> (a -> Logged b) -> Logged b
Logged (x,log) ---> f = 
    let Logged (y, line) = f x in Logged (y, log ++ line)


main = do
  putStrLn . show $ 
    loggedSquare(loggedInc(loggedDouble(5, [])))

  putStrLn . show $
    logged (\x -> (x ^ 2, ["Squared" ++ show x])) $
    logged (\x -> (x + 1, ["Incremented" ++ show x])) $
    logged (\x -> (x * 2, ["Doubled" ++ show x])) $
    wrap 5

  putStrLn . show $
    inject 5 --->
    \x -> Logged (x * 2, ["Doubled" ++ show x]) --->
    \x -> Logged (x + 1, ["Incremented" ++ show x]) --->
    \x -> Logged (x ^ 2, ["Squared" ++ show x])

  -- putStrLn . show $ return 5 >>= (* 2) >>= (+ 1) >>= (^ 2)


-- // How about the three monad laws?

-- // Left identity
-- withCallCounts(x => x * x)(wrap(5)) === (x => x * x)(5)



-- // unit(x).bind(f) === f(x)
-- wrap(5) === withCallCounts(wrap(5))([5, 0])

-- withCallCounts(f)([x, 0]).bind(unit) === withCallCounts(f)([x, 0])



-- // unit(x).bind(f) === f(x)
-- // unit(x).bind(f) === f(x) === withCallCounts(f)([x, 0])

-- // Right identity
-- // m.bind(unit) === m
-- // withCallCounts(f)([x, 0]).bind(unit) === withCallCounts(f)([x, 0])

-- // Associativity
-- // m.bind(f).bind(g) === m.bind(x => f(x).bind(g))
-- // withCallCounts(f)([x, 0]).bind(g) === withCallCounts(x => f(x).bind(g))([x, 0])
