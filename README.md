# Programming Language Explorations

Source code for the examples in [a book](https://rtoal.github.io/ple). And more.

Nearly every example in this repo can be run at [Replit](https://replit.com). Many
(especially the smaller single-file scripts) can also be run at [TIO](https://tio.run)
or [OneCompiler](https://onecompiler.com/). Many languages feature their own
”official” online playgrounds, notably [Rust](https://play.rust-lang.org/),
[Go](https://play.golang.com/), [TypeScript](https://www.typescriptlang.org/play),
and [Haskell](https://play.haskell.org/)

You are welcome to clone this repository and run the examples locally on your own
machine. See the specific README files within the language sub folders for instructions
running the examples this way. You'll generally have to first download and install a
language implementation for your particular operating system and architecture; such
information is generally available online, but the individual language READMEs will
often have pointers.

All of the examples here have been tested on a machine running macOS using the
language versions in the table below. The tests are executed via the `test.sh`
script in each language folder. Modify the test script or install a suitable
Unix-like virtual machine if you desire to run the test scripts yourself.

| **Language** |                                              | **Version** | **Platform**                                       |
| :----------- | :------------------------------------------: | :---------- | :------------------------------------------------- |
| Ada          |     ![](docs/resources/ada-logo-24.png)      | 2015        |                                                    |
| APL          |     ![](docs/resources/apl-logo-24.png)      |             |                                                    |
| AWK          |     ![](docs/resources/awk-logo-24.png)      | 20070501    |                                                    |
| Bash         |     ![](docs/resources/bash-logo-24.png)     | 3.2.57      |                                                    |
| Befunge      |                                              |             |                                                    |
| Brainfuck    |                                              |             |                                                    |
| C            |      ![](docs/resources/c-logo-24.png)       | C17         | Apple clang 14.0.3                                 |
| C#           |    ![](docs/resources/csharp-logo-24.png)    |             | Mono C# compiler version 4.4.1.0                   |
| C++          |     ![](docs/resources/cpp-logo-24.png)      | C++20       | Apple clang 14.0.3                                 |
| Ceylon       |    ![](docs/resources/ceylon-logo-24.png)    |             |                                                    |
| Chapel       |    ![](docs/resources/chapel-logo-24.png)    | 1.19.0      |                                                    |
| Clojure      |   ![](docs/resources/clojure-logo-24.png)    | 1.11.1.1347 |                                                    |
| CoffeeScript | ![](docs/resources/coffeescript-logo-24.png) | 1.12.2      |                                                    |
| Crystal      |   ![](docs/resources/crystal-logo-24.png)    |             |                                                    |
| D            |      ![](docs/resources/d-logo-24.png)       |             | DMD64 D Compiler v2.076.0                          |
| Dart         |     ![](docs/resources/dart-logo-24.png)     | 1.24.2      |                                                    |
| Elixir       |    ![](docs/resources/elixir-logo-24.png)    |             |                                                    |
| Elm          |     ![](docs/resources/elm-logo-24.png)      | 0.18.0      |                                                    |
| Erlang       |    ![](docs/resources/erlang-logo-24.png)    | 21          | Erlang/OTP 21                                      |
| Factor       |    ![](docs/resources/factor-logo-24.png)    |             |                                                    |
| F#           |    ![](docs/resources/fsharp-logo-24.png)    |             |                                                    |
| Fortran      |    ![](docs/resources/erlang-logo-24.png)    |             | GNU Fortran (GCC) 6.1.0                            |
| Futhark      |   ![](docs/resources/futhark-logo-24.png)    |             |                                                    |
| Go           |      ![](docs/resources/go-logo-24.png)      | 1.16.4      |                                                    |
| Grain        |    ![](docs/resources/grain-logo-24.png)     | 0.5         |                                                    |
| Hack         |     ![](docs/resources/hack-logo-24.png)     |             |                                                    |
| Haskell      |   ![](docs/resources/haskell-logo-24.png)    | 2010        | Glasgow Haskell Compilation System, version 8.10.5 |
| Idris        |    ![](docs/resources/idris-logo-24.png)     | 1.3.1       |                                                    |
| Io           |      ![](docs/resources/io-logo-24.png)      | 20140919    |                                                    |
| Java         |     ![](docs/resources/java-logo-24.png)     | 20          |                                                    |
| JavaScript   |  ![](docs/resources/javascriptlogo-24.png)   | ES2023      | Node 20.3.1                                        |
| Julia        |    ![](docs/resources/julia-logo-24.png)     | 1.1.1       |                                                    |
| K            |      ![](docs/resources/k-logo-24.png)       |             | Kona Win.3.39-69                                   |
| Koka         |     ![](docs/resources/koka-logo-24.png)     |             |                                                    |
| Kotlin       |    ![](docs/resources/kotlin-logo-24.png)    | 1.8.22      |                                                    |
| LOLCODE      |   ![](docs/resources/lolcode-logo-24.png)    | 0.11.2      |                                                    |
| Lua          |     ![](docs/resources/lua-logo-24.png)      | 5.4.3       |                                                    |
| Mercury      |   ![](docs/resources/mercury-logo-24.png)    |             |                                                    |
| Mojo         |     ![](docs/resources/mojo-logo-24.png)     |             |                                                    |
| Nasm         |     ![](docs/resources/nasm-logo-24.png)     | 2.13.01     |                                                    |
| Nemerle      |   ![](docs/resources/nemerle-logo-24.png)    |             |                                                    |
| Nim          |     ![](docs/resources/nim-logo-24.png)      |             |                                                    |
| OCaml        |    ![](docs/resources/ocaml-logo-24.png)     | 4.07.1      |                                                    |
| Octave       |    ![](docs/resources/octave-logo-24.png)    |             |                                                    |
| Odin         |     ![](docs/resources/odin-logo-24.png)     |             |                                                    |
| Perl         |     ![](docs/resources/perl-logo-24.png)     | 5.26.0      |                                                    |
| Prolog       |                                              |             |                                                    |
| PureScript   |  ![](docs/resources/purescript-logo-24.png)  | 0.11.5      |                                                    |
| Python       |    ![](docs/resources/python-logo-24.png)    | 3.10.0      |                                                    |
| R            |      ![](docs/resources/r-logo-24.png)       |             |                                                    |
| Racket       |    ![](docs/resources/racket-logo-24.png)    |             |                                                    |
| Ruby         |     ![](docs/resources/ruby-logo-24.png)     | 3.2.2       |                                                    |
| Rust         |     ![](docs/resources/rust-logo-24.png)     | 1.69.0      |                                                    |
| Scala        |    ![](docs/resources/scala-logo-24.png)     | 2.12.8      |                                                    |
| Smalltalk    |  ![](docs/resources/smalltalk-logo-24.png)   |             |                                                    |
| Standard ML  |     ![](docs/resources/sml-logo-24.png)      |             | mlton-20180207                                     |
| SudoLang     |                                              |             |                                                    |
| Swift        |    ![](docs/resources/swift-logo-24.png)     | 5.8.1       |                                                    |
| Tcl          |     ![](docs/resources/tcl-logo-24.png)      |             |                                                    |
| TypeScript   |  ![](docs/resources/typescript-logo-24.png)  | 5.0.4       |                                                    |
| V            |      ![](docs/resources/v-logo-24.png)       |             |                                                    |
| Vala         |     ![](docs/resources/vala-logo-24.png)     |             |                                                    |
| Verse        |    ![](docs/resources/verse-logo-24.png)     |             |                                                    |
| Whiley       |    ![](docs/resources/whiley-logo-24.png)    |             |                                                    |
| Zig          |     ![](docs/resources/zig-logo-24.png)      |             |                                                    |
