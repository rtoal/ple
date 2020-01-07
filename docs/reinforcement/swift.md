<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/swift-logo-64.png">

# Swift Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Swift knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

1. Who created Swift and in what year?

1. Swift was designed to replace what language?

1. The three main goals for Swift was that it be safe, fast, and _________.

1. Does Swift use curly braces or indentation for structure?

1. What is the difference between the range operators `...` and `..<`?

1. What is the syntax for string interploation?

1. Parameters in Swift have two names. One of the names is called the local name. What is the other name called?

1. How do you mark that a parameter can be changed?

1. How do you mark the argument passed to an `inout` parameter?

1. Many languages use `split` to break a string into a list of characters, and `join` to turn an array of characters into a string. How do you do these two operations in Swift?

1. Mutable variables are introduced with ________ and immutable variables with ________.

1. We use the `print` function to write to standard output. But how do we write to standard error?

1. How are the command line arguments obtained?

1. It is legal to write `var x = 1` but not legal to write `var a = []`. Why?

1. When reading a line from a file in Python, an exception is raised when the file has been fully read. What happens in Swift? (In other words, What is the return type of `readLine` and why?)

1. How do you access the second element of the tuple t?

1. List all the integer types of Swift.

1. Are the built-in types `Float` and `Double` guaranteed to have a fixed implementation size, or are they implementation-dependent as in C++? If they do, what are these sizes?

1. What are the six type kinds?

1. How do structs and classes differ?

1. Why is it that the type `Int` is acutally a `struct`?

1. What is the nicer way of writing the type expressions `Array<Int>`,  `Dictionary<String, Bool>`, and `Optional<Double>`?

1. Are arrays, sets, and dictionaries structs or classes?

1. Do the equality operators `==` and `!=` for arrays, sets, and dictionaries compare the elements of these objects or is the comparison done on object identities?

1. What is the method for getting the number of array elements, the number of set elements, and the number of dictionary entries?

1. How do you determine if a value is contained in a given array?

1. How does the read-onliness of an array, set, or dictionary in Swift differ from the const-ness of an object in JavaScript?

1. How do you arrange for a function call to _not_ require the external name of a parameter?

1. Why are external parameter names often prepositions, but local names are often nouns and noun phrases? Give a trivial example (both a definition and a call) that backs up your answer.

1. For a function definition using `func`, are you allowed to omit the types of the parameters? Are you allowed to omit the return type?

1. What is a **closure** in Swift?

1. Write a closure that squares its argument with both the in-notation and the form with the shorthand argument names.

1. What are the four kinds of struct/class members?

1. The two different kinds of properties are stored properties and ________________ properties.

1. Suppose we had a struct called `Square` with a stored property called `sideLength`. Define the computed property `area` (which can be read and written).

1. How do we employ the shorthand syntax for read-only computed properties? (That is, what exactly is omitted?)

1. Give a definition for a Swift enumeration of the additive primary colors `red`, `green`, and `blue`.

1. How do you obtain the raw value of an object of an enumeration type?

1. How do you construct a value of an enumeration type from its raw value?

1. Give an enumeration definition for a type whose values cover (1) the two boolean values, (2) the 8-bit signed integers, and (3) the value `file_not_found`.

1. Define your very own generic linked list as an indirect enumeration, using the definition “A list is either empty or a value (called the head) connected to a list (called the tail).” (Just define the type, you don’t need to include any methods.)

1. Write a `length` method for a generic linked list enumeration type defined according to the rule “A list is either empty or a value (called the head) connected to a list (called the tail).”

1. Write a `head` for a generic linked list enumeration type defined according to the rule “A list is either empty or a value (called the head) connected to a list (called the tail).” If your type is called `MyLinkedList<T>` then your method should return a `T?`.

1. What is the syntax for a generic type parameter that is constrained to types that adopt a certain protocol?

1. The three main syntactic forms for unwrapping optionals are `if-let`, `while-let` and ________________.

1. What is the `??` operator called?

1. What does it mean that the `??` operator is short-circuit?

1. Are `if-let`, `while-let`, or `guard-else` constructs required to access an element of an optional array? If not, what is a more concise way to access the element?

1. Are `if-let`, `while-let`, or `guard-else` constructs required to access a property of an optional struct/class instance? If not, what is a more concise way to access the property?

1. The `guard-else` handles scope weirdly compared to `if-let` and `while-let`. What is this odd scope rule, and why is it odd?

1. If a function is defined to return a `String?`, can we simply place the statement `return "Hello"` in the body, or will this be a compile time error, or perhaps a run time error?

1. Distinguish cases in which optionals should be used instead of throwing.

1. What is the difference between the operator `+` and the operator `&+`?

1. There is actually a shorter way to write the expression `reduce(0, {$0+$1})`. What is it?

1. In Swift, the operator `+` both concatenates string and adds numbers. This is known to lead to huge headaches and funny surprises in JavaScript, and yet, it is not really a big deal in Swift. Why not?

1. Swift does not have an exponentation operator. Could you, in principle, define `**` yourself?

1. True or false? Swift’s standard library has over 100 structs/classes/enums.

1. Swift is the world’s first protocol-oriented language. What exactly is a protcol?

1. If you declare your own class/struct/enum, how do you specify that your type adopt (conform to) one or more protocols? Give an example.

1. How does Swift guarantee that any type you create to conform to the `Equatable` protocol require that you only define `==` and not `!=` as well?

1. If you are using the dictionary type `[K:V]` for types `K`, and `V`, what protocol must type `K` adopt?

1. Why are extensions so awesome? In particular, what do they allow you to do, that you can’t do, say, in Java?

1. Both Swift and Python programmers use `self` a lot. But their use is quite different. What is the essential difference between the two languages in the use of this keyword?

1. How does Swift mark a property or method as belonging to the type instead of to an instance?

1. How do extensions solve the famous _expression problem_?

1. Why and when do we extend protocols?

1. What is the difference between a definitive initialization language and a default implicit initialization language?

1. Do Swift compilers generally give warnings if they detect a variable might not have been initialized when it is used?

1. What happens in Swift if a pattern match is not exhaustive?

1. Why does ARC mean no tracing garbage collector is required?

1. What is the advantage of ARC over tracing garbage collectors?

1. How do Swift programmers avoid memory leaks due to cycles of references on the heap? (Hint: they use a particular kind of reference. What is this reference called and how does it work?)






