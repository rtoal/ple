<img src="https://raw.githubusercontent.com/rtoal/ple/master/docs/resources/cpp-logo-64.png" width="64" height="64">

# C++ Explorations

To get C++:

If you don't have a text editor or IDE installed, you can use <a href="https://replit.com/">replit</a> to write and compile simple C++ programs.

To build and run C++ programs locally, you will likely be able to take advantage of a pre-installed C++ compiler such as <code>g++</code> (Unix) or <code>clang++</code> (MacOS). On MacOS, the command <code>g++</code> is likely aliased to <code>clang++</code>.

For Windows, a simple approach is to install <a href="https://www.mingw-w64.org/">MinGW-w64</a>.

# About C++

C++ originated in the 1970s, when Bjarne Stroustrup implemented a simulator to study communication between programs in a distributed environment. After finding existing unsatisfactory for various reasons, Stroustup designed a new language, a superset of C with Simula's classes, but without garbage collection, run-time type checking, and the impossibly low-level near-typelessness of BCPL. The language went by the name C with Classes and evolved, by 1983, into C++, popularizing object-oriented programming like no other language before it.

As a superset of C, C++ necessarily permits manual memory management, but encourages memory-safe programming patterns such as \defn{smart pointers} and the use of class constructors to allocate memory and destructors to deallocate, hiding management details from users of the class. C++ encourages all user-defined data types to act as if they were copied, but provides mechanisms to avoid copies via moves. Pointers and aliases (confusingly termed references in C++) are available when explicit sharing is desired. C++ is statically typed with extensive type inference, range-based \verb!for!-loops, atomics, and anonymous functions (even supporting generics). The combination of expressive constructs and system-level memory operations with incredible high performance have kept the language relevant and widely-used.

# C++ Resources

These two sources are widely considered to be the best sources.

- [C++ reference](https://en.cppreference.com/w/)
- [LearnCPP.com](https://www.learncpp.com/)

# C++ Open Source Projects

Studying, and contributing to, open source projects is an excellent way to improve your proficiency in any language. Due to its long history, there is no possible way to contain all the C++ open-source projects but a few will be provided here:

- [TensorFlow](https://github.com/tensorflow/tensorflow)
- [React Electron](https://github.com/electron/electron)
- [Godot](https://github.com/godotengine/godot)
- [Google Test](https://github.com/google/googletest)
- [ClickHouse](https://github.com/ClickHouse/ClickHouse)
- [dLib](https://github.com/davisking/dlib)
- [Tesseract](https://github.com/tesseract-ocr/tesseract)
