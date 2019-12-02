<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/cpp-logo-64.png">

# C++ Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful C++ knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

1. Who created C++ and in what year?

1. C++ was intended to be a proper superset of what language?

1. What does it mean that C++ is a _systems language_?

1. What does it mean that C++ is an _unmanaged language_?

1. Unlike almost every other language with sophisticated modules that are imported, C++ wires together multifile programs with the weak `#include` directive. What exactly does `#include` do?

1. How do you write a string to standard output?

1. What does `using namespace` do and why is it so common in C++?

1. C++ has six different built-in character types. What are they?

1. Integers can be signed or ________________. They can be short, regular-sized, or ________________.

1. In addition to `float` and `double`, C++ has two other floating-point types. What are they?

1. You might see `int&` used where a type should appear (say in a variable or parameter declaration). One can argue this is not a type at all! What does this expression mean, and why do we say it is not a real type?

1. Is `void` a type? If not, what is it?

1. Give three different syntaxes to declare an immutable integer variable named `dozen` initialized to the value 12.

1. What are the types of the expressions `'$'`, `u'$'`, and `U'$'`?

1. Do the types `int`, `float`, and `double` have fixed bit sizes? If so, what are they? If not, why not?

1. Given `struct Point {int x; int y};` how do you declare a variable `p` of type `Point` whose `x` and `y` fields are initialized to 5 and 8, respectively?

1. Do structs have value semantics or reference semantics?

1. Suppose `S` is a struct type whose instances are very large. How do you define a parameter of type `S` for a function in which the `S` object will not be changed?

1. Since structs are copied when passed as parameters, how can you write a function that mutates a struct?

1. C++ references, defined using `&` are really just aliases and nothing more. True or false?

1. If we define both `void f(int& x) {}` and `void f(int&& x) {}` when would the first function be called and when would the second?

1. Can the function `int f() {int x=2; int& y = x; return y;}` cause a dangling pointer when called? Why or why not?

1. Can the function `int* f() {int x=2; int* y = &x; return y;}` cause a dangling pointer when called? Why or why not?

1. Given `struct Point {int x; int y;}` is it legal to define and initialize a variable like this: `Point p = new Point {1,2}`? Why or why not?

1. What things go in static storage? Stack storage? Heap storage?

1. Every `new` must be matched with a what?

1. What is the keyword for expression meaning a pointer that doesn’t point to anything?

1. What do you have when you allocate a pointer with `new` but forget to deallocate it?

1. Why do you have when a pointer has been deallocated but you try to dereference it?

1. If we define `void inc(int* x) {(*x)++;}` and we wanted to use this function to increment a global variable `y`, how would we call the function?

1. It’s possible, but unusual to write `(*p).x`. What do we write instead?

1. What is the expression for “a pointer to x”?

1. Explain what `x` is being typed as in the declarator `char ***x[13][21]`.

1. Explain what `x` is being typed as in the declarator `int (*c)(long, long)`.





