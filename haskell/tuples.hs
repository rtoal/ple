
-- there isn't a whole lot you can do with tuples; the functions below represent the entirety of the Data.Tuple module; many of these functions are builtin to Prelude (more on this later), but just so you could see them, we renamed the modules SOMETHING LIKE THAT, DONT NEED TO INCLUDE THEM IF YOU DONT WANT TO, I JUST STILL THINK ITS NICE FOR THE READER TO SEE THAT THIS IS LITERALLY IT WHEN IT COMES TO TUPLES AS A BASELINE COMPARISON AGAINST LISTS' CAPABILITIES

tuplefst :: (a,b) -> a
tuplefst (x,_) =  x -- this takes the first value of a tuple

tupleSnd :: (a,b) -> b
tupleSnd (_,y) =  y -- this takes the second value of a tuple

tupleCurry :: ((a, b) -> c) -> a -> b -> c
tupleCurry f x y =  f (x, y) -- this converts an uncurried function into a curried one

tupleUncurry :: (a -> b -> c) -> ((a, b) -> c)
tupleUncurry f p =  f (fst p) (snd p) -- this converts a curried function into an uncurried function acting on arguments of pairs

tupleSwap :: (a,b) -> (b,a)
tupleSwap (a,b) = (b,a) -- this swaps the values of a tuple

