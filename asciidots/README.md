# AsciiDots Explorations

To build and run AsciiDots programs on your local machine, download and install the most recent language version from the [AsciiDots GitHub page](https://github.com/aaronjanse/asciidots). Make sure that you add your path of the compiler to your environment variables settings if needed.

Programs in this folder have been tested using AsciiDots 1.4.0 (installed using Python's pip) and can be run from the command line like so:

```
asciidots triple.dots
```

```
asciidots permutations.dots -- rats       # HAS NOT BEEN TESTED
```

```
asciidots top_ten_scorers.dots < ../test/wnba_input       # HAS NOT BEEN TESTED
```

To run the tests on a Unix-like shell:

```
./test.sh
```

Run `test.ps1` in PowerShell.

## About AsciiDots

AsciiDots is an esoteric, 2-dimensional, parallel programming language that takes inspiration from ASCII art. Made from Aaron Janse on March 2020, programs in this language starts with dots and move along the paths laid down by the programmer. There can be multiple dots running at the same time performing computation simultaneously, allowing the program to store data types and speed up computation (at least visually using the visual compiler). Unlike Befunge, AsciiDots programs halt if the dots have no where to go and/or the dots are awaiting for input in binary operations.

## AsciiDots Resources

Continue your study of AsciiDots with:

- [AsciiDots Official Online Interpretor](https://ajanse.me/asciidots/)
- [Official Esolang Wiki](https://esolangs.org/wiki/AsciiDots)
- [GitHub Wiki](https://github.com/aaronjanse/asciidots/wiki)
- [GitHub Repository](https://github.com/aaronjanse/asciidots)
- [AsciiDots at Rosetta Code](https://rosettacode.org/wiki/Category:AsciiDots)
- [News about AsciiDots](https://www.i-programmer.info/news/98-languages/11115-asciidots-a-language-like-a-racetrack.html)