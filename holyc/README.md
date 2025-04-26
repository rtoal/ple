<img src="https://raw.githubusercontent.com/rtoal/ple/master/docs/resources/holyc-logo-64.png" width="64" height="64">

# HolyC Explorations

To build and run HolyC programs on your local machine, download and install the most recent language version from the [HolyC installation page](https://holyc-lang.com/install). Make sure that you add your path of the compiler to your environment variables settings if needed.

Programs in this folder can be run from the command line like so:

```
hcc triple.HC           # HAS NOT BEEN TESTED
```

```
hcc permutations.HC -- rats &&       # HAS NOT BEEN TESTED
```

```
hcc top_ten_scorers.HC < ../test/wnba_input       # HAS NOT BEEN TESTED
```

To run the tests on a Unix-like shell:

```
./test.sh
```

No PowerShell test is provided as the program can only run on MacOS or Linux machines.

## About HolyC

HolyC is a recreational and statically-typed systems programming language designed by Terry A. Davis. Its intended use was for the TempleOS as a general purpose and scripting language. While similar to C both syntactically and functionally, it was created for readibility, clearer error messages, and flexible for the programmer's content. HolyC attempts to achieve these goals by abridging boilerplate or traditional code writing that one would see in C.

## HolyC Resources

Continue your study of HolyC with:

- [HolyC Home](https://holyc-lang.com/)
- [Official Documentation](https://github.com/rsdn/nemerle/wiki)
- [Nemerle at Rosetta Code](https://rosettacode.org/wiki/Category:HolyC)
