<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/haskell-logo-64.png">

# Haskell Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Haskell knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

1. Who created Haskell and in what year?

1. Is Haskell statically or dynamically typed? Strongly or weakly typed? Manifest or inferential?

1. Haskell is statically typed. What does that mean?

1. Haskell is a lazy language. What does that mean?

1. Haskell functions are pure. What are pure functions?

1. Give five advantages of pure functions over nonpure functions.

1. Why do we never use the term *assignment* in Haskell? What do we use instead?

1. What is the most popular Haskell REPL called?

1. How do you write a “Hello world” Haskell program as a script to be run on the command line?

1. Why is the Haskell “Hello world” program *not* simply `putStrLn("Hello, world")`?

1. Assuming the file _hello.hs_ contained a command line Haskell program, how do you compile and run the program using `ghc`?

1. What does Haskell use instead of curly braces for structure?

1. Which of the following are legal ways of applying the function `f` to the argument `x`: `f(x)`, `(f x)`, `(f)x`, `f x`?

1. To compute the minium value of 3 and 5 we write `min 3 5`. Can we write `min 3 5 8`? Why or why not?

1. To compute the minium value of 3 and 5 we write `min 3 5`. Can we write `min 3`? What does this expression mean?

1. What does the function `succ` do? What is its type signature? (Hint: you’ll have to know something about typeclasses here.)

1. Write `f $ g $ h $ x` without using the `$` operator.

1. Rewrite the expression `f(f(g(h(g(x)y))z))` replacing as many parentheses with `$` as possible.

1. Rewrite the definition `f x = g(h(g(x)))` in point-free form.

1. Why did the designers of Haskell choose to put the type signatures on a separate line of code instead of embedding the type information into the parameter list as is done in Go, Rust, Swift, C++, C#, Java, and friends?

1. Define (i.e., give a *function definition* for) the Haskell function that accepts a number and returns the value of 10 plus that number. Include a type signature in your definition.

1. Give the Haskell function that accepts a number and returns the value of 10 plus that number, as a *function expression*.

1. Haskell‘s precedence relationship between infix operators and prefix operators is very simple. What is it?

1. How is the multipication operator used in prefix position? Give the expression that multiplies `x` and `y` using this prefix form.

1. Given the definition `doubledThenPlus x y = 2 * x + y`, give the expression that applies `doubledThenPlus` to `a` and `b` in infix form.

1. What is the difference between the expressions `(/) 2` and `(/ 2)`?

1. Why are `(/ 2)` and `(/) 2` different functions, but `(elem 21)` and `(elem) 21` are the same function?

1. What is inferred as the type of `f` in the definition `f x y z = (x == y) && (z < z)`?

1. What is the inferred type of the expression `\(x, y) -> tan x < 5 || y`?

1. Haskell type inference is far more extensive than that of Java, Go, Rust, or Swift. What kinds of expressions can Haskell infer types for that these other languages cannot?

1. Can a function take multiple arguments in Haskell? Why or why not? If not explain how one simulates a function of no arguments and one of multiple arguments?

1. What are the six basic types?

1. What is the difference between `Int` and `Integer`?

1. What does `0.1 + 0.2` evaluate to? What does `(toRational 1 / 10) + (toRational 2 / 10)` evaluate to?

1. If a type belongs to the typeclass `Fractional` does it also belong to the typeclass `Floating`? Why or why not?

1. What do the `Real` and `Fractional` typeclasses represent?

1. What does Haskell infer for the type of `[2, 3.5]`? What does it infer for the type of `[2, pi]`? Why?

1. Why aren’t function types in the `Eq` or `Show` typeclass?

1. The tuple type `(a,b)` is in the `Eq` typeclass. So does that mean a type which is a tuple a functions would be equatable?

1. What is the difference between `'a'` and `"a"`? (Show the types of each expression.)

1. Give four reasons why you should always write type signatures.

1. What are the elements of type `Bool`?

1. What is the “not-equals” operator in Haskell?

1. What is the difference between the type of an expression being `a` versus `A`?

1. Is `()` a type? Why or why not? If so, what are the members of this type? If not, what is it?

1. What is the meaning of `uncurry (+)`?

1. Identify the bound and free variables in `\x -> \(y, x) -> x - 5 * sin z / p`.

1. Describe in English each of the following sections: `(>=0)`, ``(`mod` 2)``, `(0-)`, and `(++"s")`.

1. Is the function composition operator `(.)` left-associative or right-associative or neither?

1. What is the type of the composition operator `(.)`? (Try to answer this on your own without looking it up.)

1. The expression `let x=E1 in E2` is actually the same as what function application expression?

1. What is meant by saying lists are homogeneous while tuples are heterogeneous?

1. In Python, tuples are immutable but lists are mutable. What is the situation in Haskell?

1. Is the expression `[[False, False], [True], []]` legal?

1. Given the list `a = [10, 20, 30, 40]`, what are `head a`, `tail a`, `last a`, and `init a`?

1. Does the list expression `[x..y]` include or exclude `y`? If inclusive, how do you write an exlcusive expression? If exclusive, how do you write an inclusive one?

1. How do you write the equivalent of the Python expression `[5] * 10` in Haskell?

1. What is the more common way to write `10:20:30:40:[]`?

1. What does the `:` operator do, exactly? Is it proper to call it a constructor?

1. The definition `size a = if null a then 0 else 1 + size(tail a)` works but is not very Haskell like! Rewrite this definition in the preferred style.

1. The `takeWhile` function is totally cool and you should use it whenever it makes sense. But prove that you understand how it works: define the function recursively, with cases. (I think this question is important.)

1. Give an operator section to extract the third element of a list.

1. Is Haskell list equality more like Python or JavaScript? How so?

1. Show how `foldl (-) 1 [3,5,2,8]` and `foldr (-) 1 [3,5,2,8]` are computed.

1. How is the expression `sort a++b` interpreted?

1. Why _couldn’t_ Haskell’s designers bring themselves to use `+` for list concatentation, even if they wanted to?

1. How do you write the infinite list of all ones?

1. How do you write the infinite lists of negative numbers divisible by 3?

1. Does `take` work with infinite lists? Does `drop`?

1. How do you get the code point of a character? How do you get the character corresponding to a code point?

1. How do you uppercase a string?

1. Given a list of strings and a character, how do you make a big string by joining all the strings, in order, with the character?

1. Haskell doesn’t have something called `flatMap`, but it has something equivalent. Show how to use this to write a function that doubles every letter in a string, e.g., that takes in `"abc"` and produces `"aabbcc"`.

1. Write a guard expression that produces `"LESS"` if the fist element of a tuple is less than its second, `"EQUAL"` if the two elements are the same, and `"GREATER"` otherwise.

1. What would be the type signature of a function that takes in a tuple and produces `"LESS"` if the fist element of a tuple is less than its second, `"EQUAL"` if the two elements are the same, and `"GREATER"` otherwise.

1. What should functions that “search” or “lookup” values produce?

1. How is the `Maybe` datatype defined?

1. What would be a reasonable type signature for a function that accepts a list of numbers and either sucessfully computes a result which is a number, and can fail in three different ways (where only an error message is needed)?

1. Define a datatype consisting entirely of the members `LOW`, `NORMAL`, and `HIGH`.

1. Define a datatype for a tree in which every node has at least 0 children and at most 3 children.

1. Define a datatype for a tree in which every node can have an arbitrary number of children. Also write a function that computes the size (number of nodes) of such a tree.

1. Define a datatype for the components of a mini-programming language of expressions. These components, called _tokens_ are either: the plus operator, the times operator, a left parenthesis, a right parenthesis, a number (in which case you want to record the numeric value), or a variable (in which case you want to record its name).

1. The expression `take 5 a` create a new list containing the first 5 elements of `a`. Are the elements of the original list copied or not?
 
1. Haskell does not provide for mutable data structures. Instead, Haskell datatypes employ _________________ data structures.

1. Given `a = [10,20,30,30,40,30]`, draw a picture of the world after `b = delete 30 a` that shows you understand persistent data structures. (`delete` is from `Data.List`).

1. Suppose `a` was a very long lists. Why is `5:a` fast but `a ++ [5]` slow?

1. Monads are types whose values are wrapped values from an underlying type. The function on monads that wrap a value must be an ________________ operation to an ________________ composition operator.

1. What is the type signature of `>>=`? What does this operator do, exactly?

1. What is the difference between `>>=` and `>>`?

1. Write `x >> y >> z` in `do`-notation.

1. Write `x >>= y >>= z` in `do`-notation.

1. What is the mondaic composition operator for the Haskell List type?

1. Haskell is supposedly a pure functional language but real programs need effects, random numbers, and I/O. How does Haskell do these things, if at all?

1. What is the type signature of `getLine` do? What does it do?

1. Write a Haskell script (command line driven program) that writes the values 1 through 100 on a separate line. Explain how Haskell separates the pure and impure parts of this program.

1. What is the name of the type system that Haskell shares with all the ML family of languages?

