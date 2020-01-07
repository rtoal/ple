<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/python-logo-64.png">

# Python Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Python knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

1. Who created Python and in what year?

1. How long was GvR’s tenure as the BDFL?

1. Python doesn’t use curly braces; instead, structure is shown using indentation, with something known as the _________________ rule.

1. How do you write a line of text to standard output?

1. How do you access the third command line argument of a script, run on the command line?

1. How do you iterate through the lines of standard input?

1. Why do we not have to worry about the expression `range(1, 10000000)` taking up a lot of memory?

1. How do you write the (conditional) expression that evaluates to `y` if `x` is truthy and to `z` if `x` is falsy.

1. How do you get the type of a Python expression at runtime?

1. Why does Python not have primitive and reference types?

1. If everything in Python is an object, does that mean even integers and booleans get allocated on the heap? What allows them to not have to be heap-allocated?

1. Does Python have distinct types for integers and floating point numbers?

1. Does Python have distinct types for small integers and unbounded integers?

1. What is the difference between `is` and `==`?

1. How can you tell whether string `s` is a substring of string `t`?

1. How do you do string interpolation in Python?

1. Why is `2 and 3` equal to 3, but `2 & 3` equal to 2?

1. Name all the falsy values in Python.

1. How do you write a one-element tuple?

1. How are tuples compared with `<`, `<=`, `>`, and `>=`? Are lists compared the same way?

1. If `{3, 5}` is a legal set expression, why is `{}` not a legal set expression?

1. How do you “declare” a local variable in Python?

1. What is the difference between `p.x` and `p[x]`?

1. If `x == 'y'` then what is `{ x: 3, 'x': 5 }` ?

1. Does Python have an analog to JavaScript’s spread operator? If so, give an example of its use.

1. You might often see the expression `a[:]`, for some list `a`. What does this expression do, exactly?

1. Explain why `a[::-1]` is the idiom for a reversed list.

1. How does one best create an array of size 100 in which every element is 0? (Do not write a loop.)

1. What is the difference between `a+b`, and `[*a,*b]` where `a` and `b` are lists?

1. `a.append()` mutates `a`. How do you do a non-mutating append?

1. How do you add an element to the front of a list, in a mutating fashion? Is this efficient? If not, what should you do instead?

1. Write an IIFE that applies an anonymous function that squares its argument to the value 100.

1. What important limitations does Python put on anonymous functions?

1. In the function definition `def f(x, y): return [x, y]`, what do we call `x` and `y`?

1. In the function call `f(y, z)`, what do we call `y` and `z`?

1. What are kwargs?

1. Can positional arguments ever appear after keyword arguments? Why or why not?

1. Can a function definition have multiple “args’ parameters? Why or why not?

1. Does Python allow assignments with array patterns on the left-hand side?

1. Does Python allow assignments with dictionary patterns on the left-hand side?

1. How do you force a function to take its arguments positionally (Python 3.8 and above)?

1. How do you force a function to take its arguments as kwargs?

1. Why should you be scared of using default arguments that are lists? Do you have to worry about this in JavaScript?

1. In sense are Python anonymous functions limited compared to those of JavaScript?

1. Python has global scope and function scope, but does it have block scope?

1. What is the difference between `global` and `nonlocal`?

1. When do you use `nonlocal` and when do you use `global`?

1. Does Python have an analog of JavaScript’s temporal dead zone? If so, how does it work? If not, why is such a concept incoherent in Python?

1. Write a function that takes in a number and returns a function that adds that number to its argument. Is the function you wrote higher-order? Why or why not? Does that function illustrate a closure? Why or why not? Does that function illustrate currying? Why or why not?

1. Why are `map` and `filter` rarely used in Python?

1. What is a list comprehension for all pairs (2-tuples) of integers where the first element is in the range 1..5 inclusive and the second is in the range 1..3 inclusive?

1. What is a list comprehension for a 10x10 multiplication table?

1. What is the first line of that block at the end of a module that allows you to “run” the module from the command line?

1. What is the difference between `import M` and `from M import e`?

1. Instead of `throw`, Python uses ________________.

1. The things inside of a class are called ________________.

1. How do you create an instance of a class?

1. What is the difference between a function and a method?

1. What is the first parameter of a method for?

1. Suppose class `Circle` has a method `area` and `c` is an instance of `Circle`. The invocation `c.area()` is actually sugar for what expression?

1. What is the method `__init__` used for?

1. What is the methods `__str__` used for?

1. Is it possible to make an attribute of a class inaccessible to methods outside the class (like Java’s `private`)?

1. What is the syntax for declaring a class that is a subtype of another class?

1. What is a class attribute?

1. How are class attributes defined in Python?

1. How do you allow the operators `+` and `-` to apply to instances of a class you write yourself?

1. Which two methods are required for an object to be an iterator? What behavior must these methods have?

1. Iterators can be used in what Python statement?

1. Rather than writing one’s own iterator object, we write ____________s instead.

1. JavaScript defines generators with the syntax `function*`. How does Python define generators?

1. Given `def f(): yield 1; yield 2; yield 3`, what is wrong with writing `for i in f: print(i)`? What should we write instead?

1. What is a generator expression? Give an example.

1. What does the `@property` decorator do?

1. What does the `@classmethod` decorator do?

1. What is PEP-8?

1. What is PEP-20?


