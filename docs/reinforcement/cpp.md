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

1. Show how to compile and run `hello.cpp` from the command line, using the `g++` compiler, using the 2017 standard version of the language.

1. C++17 has six different [built-in character types](https://en.cppreference.com/w/cpp/language/types). What are they? There is one new character type added in C++20. What is it?

1. Integers can be signed or ________________. They can be short, regular-sized, or ________________.

1. In addition to `float` and `double`, C++ has one other floating-point type. What is it?

1. You might see `int&` used where a type should appear (say, in a variable or parameter declaration). One can argue this is not a type at all! What does this expression mean, and why do we say it is not a real type?

1. Is `void` a type? If not, what is it?

1. Give three different syntaxes to declare an immutable integer variable named `dozen` initialized to the value 12.

1. What are the types of the expressions `'$'`, `u'$'`, and `U'$'`?

1. Do the types `int`, `float`, and `double` have fixed bit sizes? If so, what are they? If not, why not?

1. Given `struct Point {int x; int y};` how do you declare a variable `p` of type `Point` whose `x` and `y` fields are initialized to 5 and 8, respectively?

1. Do structs have value semantics or reference semantics? What about classes?

1. Suppose `S` is a struct type whose instances are very large. How do you define a parameter of type `S` for a function in which the `S` object will not be changed?

1. Since structs are copied when passed as parameters, how can you write a function that mutates a struct?

1. C++ references, defined using `&` are really just aliases and nothing more. True or false?

1. If we define both `void f(int& x) {}` and `void f(int&& x) {}` when would the first function be called and when would the second?

1. Can the function `int f() {int x=2; int& y = x; return y;}` cause a dangling pointer when called? Why or why not?

1. Can the function `int* f() {int x=2; int* y = &x; return y;}` cause a dangling pointer when called? Why or why not?

1. Given `struct Point {int x; int y;}` is it legal to define and initialize a variable like this: `Point p = new Point {1,2}`? Why or why not?

1. What things go in static storage? Stack storage? Heap storage?

1. Every `new` must be matched with a what?

1. What is the keyword for the expression meaning a “pointer that doesn’t point to anything”?

1. What do you have when you allocate a pointer with `new` but forget to deallocate it?

1. What do you have when a pointer has been deallocated but you try to dereference it?

1. If we define `void inc(int* x) {(*x)++;}`, and we wanted to use this function to increment a global variable `y`, how would we call the function?

1. It’s possible, but unusual, to write `(*p).x`. What do we write instead?

1. What is the expression for “a pointer to x”?

1. Explain what type `x` is given in the declarator `char ***x[13][21]`.

1. Explain what type `c` is given in the declarator `int (*c)(long, long)`.

1. What is the difference between an instance method and a class method?

1. Python uses the `@classmethod` decorator to mark a class method. How do you mark a class method in C++?

1. Why are constructors not considered to be methods?

1. If you don’t write a constructor for a struct, can you still create an instance of the struct type and supply initial values to its fields? If so, how does this work?

1. If you write a constructor for a struct type `S`that takes in a single argument, and no other constructor, can you define a variable like so: `S s;`. Why or why not? Can you define `S* p`? Why or why not?

1. Why would you never see the expression `this.x` in C++?

1. If you had an instance `x` of a struct type `S`, and no constructors were explicity defined for `S`, what does `S y(x);` do? Use the terms “construct,” “copy,” and “shallow” in your answer.

1. If you had two instances `x` and `y` of a struct type `S`, and no methods were explicity defined for `S`, what does `x == y;` do? What, technically speaking, is invoked here?

1. Suppose you were writing your very own `Set` class, for mathematical sets. Show how to declare (just declare, do not define) operators for intersection (use `&`), union (use `|`) and complement (use `~`).

1. We know that `cout` is an instance of the class `ostream`. How did the creator of the `ostream` class get expressions like `cout << x` to work?

1. What are the three explicit access control modifiers for structs (and classes)?

1. What is the only difference between structs and classes in C++?

1. Although the difference between structs and classes is incredibly trivial, many C++ programmers use a particular rule of thumb to choose between them. What is this rule?

1. What are three nice things about statically typed languages?

1. What does C++ call its equivalent of Java generic types?

1. C++ has a module called `<list>` that defines a template called `list`. So to use lists, you have to `#include <list>`. But `list` is actually in a namespace as well. Which one?

1. Is `list` a class in C++? If not, what is it?

1. One of the goals of C++ was to make user-defined classes work just like the built-in types, in particular, that they have value semantics (a.k.a copy semantics). Why then are structs, or classes, with pointer members potentially worrisome?

1. C++ tries to do a good job of hiding the details of the members of classes: generally speaking, users of a class don’t know what’s inside objects of the class, they only know about the methods&mdash;how the objects behave. In particular, clients don’t (or shouldn’t) know if there are any pointer members! So users cannot directly free up encapsulated pointers! This fact led to C++ having what kind of special class member?

1. Which five members comprise the Rule of Five?

1. What is a copy constructor supposed to do? What happens to the source of the copy?

1. What is a move constructor supposed to do? What happens to the source of the move?

1. What is the first thing you should do when overloading an assigment operator (either a copy assignment or a move assignment)?

1. What should an assignment operator return? Why?

1. What does `= default` do?

1. What does `= delete` do?

1. When does the compiler choose a move constructor over a copy constructor?

1. When are `unique_ptr` objects deleted?

1. When are `shared_ptr` objects deleted?

1. Why can’t 	`unique_ptr` obejcts be copied?

1. Even though C++ is all about helping you define your own classes with copy semantics, reference semantics is available if you want it. What language feature provides this?

1. How are raw C-Style arrays different from  arrays in almost every other language (including Java, JavaScript, Swift)?

1. If `a` is a raw C-Style array, why is it okay to use the expression `3[a]`?

1. When writing a function to process a C-style array, it is generally not sufficient to pass only the array. What else must be passed and why?

1. When writing a function to process a C-style array, the array contents can be modified simply by passing the array; there is no need to pass the array as `&a` or for the parameter to be a reference parameter! Why do C-style arrays behave so differently from everything else in the language?

1. How is a C-style array allocated on the stack?

1. How is a C-style array allocated on the heap? How is it deallocated in this case?

1. If `a` and `b` are C-style arrays, what is the meaning of `a = b`?

1. How are `std::array` objects different from `std::vector` objects?

1. Define a 100-element `std::array` of doubles.

1. Give expressions to get, for a vector `v`, (1) the first element, (2) the last element, (3) the 5th element, and (4) the number of elements.

1. How do you add an element to the end of a vector?

1. How do you insert an element into a vector between its 7th and 8th elements?

1. How do you empty out a vector (remove all its elements and set its size to 0)? (Hint: the `.empty()` method does not do it!

1. What is a `valarray` and why is it so cool?

1. C++, because it is a superset of C, inherits C’s weird “strings.” What is the actual type of these weird things?

1. Do C-strings “know” their own length? Can the length be computed? If so, how?

1. If `s` and `t` are C-strings, assignment `s = t` does not copy the contents of `t` into `s`. How do you, then, copy each character?

1. If `s` and `t` are `std::string`s, does assignment `s = t` copy each character?

1. What are the types `u16string` and `u32string` for?

1. C++ programs have to have a `main` function accepting the command line arguments. Does `main` take in an `std::vector` or `std:string` values? If not, what does it accept? Why?

1. How do you get the address of an lvalue?

1. How do make an object (instance of a struct or class) be callable (essentially, a function object)?

1. Give a C++ lambda for a function accepting a string and a number and returning whether the string has a length greater than the number.

1. What is the meaning of a lambda whose capture is `[=]`? What is the meaning of a lambda whose capture is `[&]`. What about `[]`?

1. How do you fill the first 100 elements of the C-style array `a` of integers with 0s? (Use `std::fill`.)

1. How do you fill the first 100 elements of the `std::array` `a` of integers with 0s? (Use `std::fill`.)

1. Write an expression that computes whether every element of the integer vector  `v` is less than 10. (Use `std::all_of`.)

1. Write an expression that gives the first even number in the vector of longs `v`. (Use `std::find_if`, and state what happens if there are no even numbers in the vector.)

1. Given a vector of integers, `v`, write an expression to produce a new vector containing the squares of each of the elements in `v`. This operation would be called `map` in JavaScript, Python, Haskell, and most other languages, but it’s called something else in C++. Hint: the function you must use starts with t-r-a.

1. What Swift and Python call a dictionary, C++ calls a ________________.

1. Unlike Java, which marks classes `abstract`, C++ simply says a class is abstract iff it has a pure virtual function. How are pure virtual functions declared?

1. C++ does not use the terms superclass and subclass. What does it use instead?

1. Suppose `class Dog` was a derived class of `class Animal`. Can you assign a variable of `list<Dog>` to a variable of `list<Animal>`? If not, why not?

1. Suppose `class Dog` was a derived class of `class Animal`. Suppose both `Dog` and `Animal` define a `speak` method. If we defined `Animal a = Dog(); a.speak()`, which `speak` would be called, the animal one or the dog one?

1. Suppose `class Dog` was a derived class of `class Animal`. Suppose both `Dog` and `Animal` define a `speak` method. If we defined `Animal* a = new Dog(); a->speak()`, which `speak` would be called, the animal one or the dog one?

1. What is the difference between a declaration and a definition?





