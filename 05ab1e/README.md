# 05AB1E Explorations

As a golfing language, the most common way to program with 05AB1E would be to use this [TIO](https://tio.run/#osabie) or [ATO](https://ato.pxeger.com/run?1=m73MwDQxyTB1wYKlpSVpuhabTF2VPFJzcvJ1FMrzi3JSFJV0lhQnJRdDpWHKAA).

To run scripts on the command line, you can build [Adrian Mensing’s interpreter](https://github.com/Adriandmen/05AB1E) by following the instructions on the project’s GitHub repo. This requires installing Elixir first. After cloning the 05AB1E repo, install Hex with `mix local.hex`, then update dependencies with `mix deps.get`. Then build the interpreter with `MIX_ENV=prod mix escript.build` on most systems, or `set “MIX_ENV=prod” && mix escript.build` on Windows.

This will create an executable named `osabie`.

Note that as of early March 2025, Mensing’s interpreter produces a number of warnings for Elixir versions 1.16 and above. You can patch the warnings easily (since the interpreter is open source!) then build a warning-free interpreter. Note also that the interpreter, when run on the command line, often requires something to be read from standard input, requiring one to hit the Enter key after a script finishes. This can be cleaned up by running scripts like so:

```
osabie hello.abe < /dev/null
```

```
osabie clockhands.abe < /dev/null
```

For programs that _do_ read from standard input, remember to include a blank line at the end of your input file (or type a blank line when finished if running interactively).

Alternatively, you can be fancy:

```
osabie hypot.abe < <(echo -e "12\n9\n")
```

To run the tests, invoke `./test.sh` in a Unix-friendly shell. This assumes you have built the `osabie` executable and placed it in your command path.

## About

05AB1E, created by Adrian Mensing in 2017, is a stack-based golfing language initially designed to provide an advantage in base conversion. It has since evolved into a general-purpose language. With over 250 built-in commands, programs in 05AB1E are popular within the golfing language community.

Unlike traditional stack-based languages where stacks hold only integers, 05AB1E's stacks consist of strings. Additionally, it automatically prints the top of the stack if no print command is specified before execution.

Explore its extensive command list on the language's [GitHub wiki](https://github.com/Adriandmen/05AB1E/wiki/Commands).

## Resources

- [05AB1E Wiki Home](https://github.com/Adriandmen/05AB1E/wiki)
- [05AB1E at the Esolang Wiki](https://esolangs.org/wiki/05AB1E)
- [Tips for golfing 05AB1E](https://codegolf.stackexchange.com/questions/96361/tips-for-golfing-in-05ab1e)

## In Open Source

- [05AB1E at GitHub](https://github.com/Adriandmen/05AB1E). Be sure to check out the issues page to contribute to the language’s development.
