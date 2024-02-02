<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/odin-logo-64.png">

# Odin Explorations

To build and run Odin programs on your local machine, download and install the most recent language version from the [Odin home page](https://odin-lang.org/) and ensure that the compiler is added to your OS path.

Once installed, programs can be run in one of two ways:

1. Compiled and run
```sh
odin run <dir/file>
```
2. Compiled first and then optionally ran
```sh
# build the file
odin build <dir/file>
# optionally choose to run the file
odin run <file> -file
```

To run the files in this directory directly:
```
odin run triple.odin -file
```

```
odin run permutations.odin -file
```

## About Odin

Odin is a modern, general-purpose programming language, offering an alternative to C with a focus on performance and simplicity. Odin was created by Ginger Bill who, angered by the shortcomings of the C programming language, decided to make a Pascal clone but quickly shifted to something more ambitious. The language supports data-oriented programming with features like SOA data types and is primarily used for high-performance, modern systems.

## Odin Resources

Continue your study of Odin via:

- [Odin Official Website](https://www.odin-lang.org/)
- [Odin Docs Home](https://odin-lang.org/docs/)
- [Learn Odin](https://learnodin.com/)

## Odin Open Source Projects

> Note: Before exploring some of the projects using Odin, note that Odin itself is [Open Source](https://github.com/odin-lang/Odin) and is a great resource to learn the language.

Studying, and contributing to, open source projects is an excellent way to improve your proficiency in any language. Of the many projects using Odin, you may enjoy:

- [Project for C Bindings](https://github.com/vassvik/odin-glfw)
- [Open GL Loader](https://github.com/vassvik/odin-gl)
- [CTime Rewritten](https://github.com/ThisDevDane/otime)
