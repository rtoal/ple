# Clu Explorations

Due to the CLU’s age there are not many ways to simply run the language. However, portable CLUs were built and [several ports](https://pmg.csail.mit.edu/ftp.lcs.mit.edu/pub/pclu/CLU/) are available for download. With the most recent release given on the language’s home page [here](http://people.csail.mit.edu/garland/LP/).

## About Clu

CLU, an influential language created by Barbara Liskov and her students during the 1970s, drew inspiration from Lisp, a language she deeply admired for its innovative features. By 1975, the first iteration of CLU emerged, marking a significant milestone in the evolution of object-oriented programming languages. CLU's unique computation style guided the development of contemporary languages like Python, Ruby, and Swift. The language consists of three distinct module types. Module procedures provide procedural abstraction, iterators allow for control abstraction, and clusters give access to data abstraction.

Procedures in CLU are defined to accept zero or more arguments and yield zero or more results based on these inputs. An example of this is the following declaration:

```
square_root = proc(x:real) returns (real) signals (no_real_result)
```

Iterators in CLU generate sequences of items derived from their input, facilitating a step-by-step traversal through the sequence. This action is evoked by a `for` statement. For instance:

```
for leaf:node in leaves(x) do
	…examine(leaf)...
	end
```

Clusters in CLU implement data abstraction by encapsulating a collection of objects along with a set of primitive operations designed to manipulate them. The cluster header serves as a guide, defining the available operations. For instance:

```
int_set = cluster is create, insert, elements
```

## Clu Resources

Continue your study of CLU via:

- [CLU HomePage](https://pmg.csail.mit.edu/CLU.html)
- [CLU Syntax](https://pmg.csail.mit.edu/ftp.lcs.mit.edu/pub/pclu/CLU/3.Documents/CLU-syntax.pdf)
- [CLU Reference Manual](http://publications.csail.mit.edu/lcs/pubs/pdf/MIT-LCS-TR-225.pdf)
- [Liskov: The CLU Programming Language (full interview)](https://amturing.acm.org/interviews/liskov_1108679.cfm)
- [CLU Wiki Page](https://en.wikipedia.org/wiki/CLU_(programming_language))

## Clu Open Source Projects

While CLU was influential in the realm of programming language design, particularly in the development of object-oriented programming concepts, it's largely considered a historical language. 

Therefore, it's unlikely that you'll find many, if any, active open-source projects utilizing CLU. However, you might encounter academic or historical projects that explore its concepts or implementations.

Here is a section in an [academic paper](https://dl.acm.org/doi/pdf/10.1145/154766.155385) that provides some more examples of the programming language.
