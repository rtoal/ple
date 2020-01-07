<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/java-logo-64.png">

# Java Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Java knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

1. Who created Java and in what year?

1. Java programs are made up entirely of ________________ grouped into ________________.

1. Suppose _Hello.java_ contained a program intended to be run from the command line. How do you compile and run the program from a typical operating system terminal application?

1. Python, Swift, and Haskell require explcit `import` directives to use entities from a different module (or package). Does Java require one as well? Why or why not?

1. What is the difference between `InputStream` and `OutputStream` on the one hand and `Reader` and `Writer` on the other?

1. Are `InputStream` and `OutputStream` actually the same kind of stream objects as those that the package `java.util.Stream` is concerned with?

1. What is the difference between a variable and an object in Java?

1. Variables have _________________ and objects have ________________.

1. What kind of names can Java infer the types of?

1. Java’s REPL is called ________________.

1. What are the eight primitive types?

1. What is the difference between a primitive and a reference type?

1. What is the difference between an interface and a class?

1. Sometimes you might hear people say an interface is a class. What might they mean?

1. Can an interface have methods with a body? Why or why not? If so, what is such a method known as, and how even does it work?

1. How do you write the JavaScript array literal `[13, 5, 8, 2]` in Java?

1. Is `flatMap` a method of arrays? What about `filter`? What about `map`?

1. Is `null` a member of every reference type in Java? If so, what were the designers of the language thinking when they included this “feature”?

1. What is the decision to include `null` as a member of every reference type referred to as? Who called it that? Why?

1. Suppose variable `s` is declared to have type `String`, but at runtime, the value of `s` is `null`. What happens when executing `s.toLowerCase()`?

1. In Java, is `List` a type? Is `List<Integer>` a type?

1. What is the difference between `List<Object>` and `List<?>`?

1. Suppose `Animal` is a superclass of `Dog`. In Java, is `List<Dog>` a subclass of `List<Animal>`?

1. What is the equivalent of Swift’s `nil` in Java?

1. What is the equivalent of Swift’s `x ?. y` in Java?

1. What is the equivalent of Swift’s `x ?? y` in Java?

1. Suppose that `o` is an optional that wraps an integer, and `f` is a function that takes in an integer. How do you safely invoke `f` on the wrapped integer, given that `o` might be empty?

1. Java lambda functions impelement interfaces annotated with which annotation?

1. What is the characteristic method of a Java supplier? Of a consumer? Of a predicate?

1. How do you create a stream producing the integers 1 through 100?

1. How do you create an infinite stream of the even numbers starting at 20?

1. How do you create an empty stream?

1. How do you create a stream of 100 zeros followed by 1000000 ones? (Note: the entire stream is to have exactly those 1000100 elements. The stream should, as streams do, generate elements on demand.)

1. How do you create a stream from an array?

1. How do you create a stream from a `LinkedList`?

1. Given an array `a`, what does `Arrays.stream(a).distinct().toArray()` do?

1. Does `Stream.of(2,3,5,7,11).map(x -> x * x).toArray()` produce an integer array? If not, what does it produce, and how do you make it produce the expected integer array?

1. For array `a`, what does `Arrays.stream(a).min()` return, exactly?

1. Suppose `r` was a `Reader` object. Does `r.lines().count()` return the number of lines?

1. Suppose `r` was a `Reader` object. How do you get the lines of the reader into an array?

1. Suppose `r` was a `Reader` object. How do you get the lowercased lines of the reader into an array?

1. Suppose `r` was a `Reader` object. How do you get the lowercased lines of the reader into an array, sorted by line?

1. Suppose `r` was a `Reader` object. How do you get the lowercased lines of the reader into an array, eliminating all duplicates?

1. Given a list `a`, what does `a.stream().anyMatch(x -> x < 5)` produce? (Make sure to give the type of the result.)

1. Write an expression that produces whether or not all elements of a list (not an array, but a list) of integers, are even.

1. Does the expression `a.stream().reduce(0, (x, y) -> x + y)` produce the sum of the elements of list `a`? Why or why not?

1. The expression `IntStream.range(1, n).reduce((x, y) -> x * y)` is a good attempt to produce the factorial of `n`, but it doesn’t produce an integer. What does it produce? How can you modify it (slightly) to produce the integer factorial?

1. Java streams have many terminal operations, such as `findFirst`, `findAny`, `anyMatch`, `allMatch`, `noneMatch`, `min`, `max`, `count`, `toArray`, and `reduce`. There is also `forEach`. It is tempting to use `forEach` to post-process the stream by, say, adding the elements to a map. But this is a misuse of `forEach`. What _kind_ of terminal operation should be used instead?

1. The collectors `Collectors.toList` and `Collectors.toSet` take no arguments. But `Collectors.toCollection` does take an argument. What kind of argument is this, and what is it for?

1. If you wanted to average some integers, you could write `Stream.of(1,2,3).collect(Collectors.averagingInt(f))` for some particular function `f`. What should `f` be here?

1. The `Collectors` class has static methods `toList`, `toSet`, `toMap`, and `toCollection`, but there is no `toArray`. Why not?

1. What does `Stream.of(1,2,3,4,5,6,7).collect(Collectors.groupingBy(x->x%3))` produce?


