<img src="https://raw.githubusercontent.com/rtoal/ple/master/docs/resources/java-logo-64.png">

# Java Explorations

To build and run Java programs on your local machine, download and install the most recent language version from the [Java downloads page](https://www.oracle.com/java/technologies/downloads/) or use your favorite package manager.

Programs in this folder have been tested using Java 23.0.2 and can be run from the command line like so:

```
java Triple.java
```

```
java Permutations.java I like carrots
```

```
java TopTenScorers.java < ../test/wnba_input
```

However, several of these example programs are made up of multiple source code files. These examples must be run by explicitly compiling each source code file and then running the main class. For example, to run the `AnimalChorusExample` program, you must explicitly compile the _.java_ file hosting the main program. This will create _.class_ files for the main class and any dependent classes. Then, you can run the main class with the `java` command, for example:

```
javac AnimalChorusExample.java && java AnimalChorusExample
```

Running `jshell` will give you a repl.

To run the tests, invoke `./test.sh` in a Unix-friendly shell or `test.ps1` in PowerShell.

## About

Java is a high-level, object-oriented language created by James Gosling at Sun Microsystems in the early 1990s and first released in 1995. It has become one of the most widely-used programming languages for desktop, web, mobile, and enterprise applications. It is widely used in large-scale financial systems. Java was introduced along with the Java Virtual Machine (JVM) that has been used as a compilation target for dozens of other languages, allowing them to interoperate with Java.

## Resources

- [Documentation](https://docs.oracle.com/en/java/)
- [Official Specifications](https://docs.oracle.com/javase/specs/)
- [Java Tutorials](https://docs.oracle.com/javase/tutorial/)
- [Java at Rosetta Code](https://rosettacode.org/wiki/Category:Java)
- [Java in 100 Seconds](https://www.youtube.com/watch?v=l9AzO1FMgM8)

## In Open Source

- [The GitHub Topic Page](https://github.com/topics/java)
- [Trending Repositories on GitHub](https://github.com/trending/java)
- [Top 100 Starred Repositories on GitHub](https://github.com/EvanLi/Github-Ranking/blob/master/Top100/Java.md)
