# CJam Explorations

To run CJam programs on your local machine, download and install the most recent language version from the [CJam download page](https://sourceforge.net/p/cjam/wiki/Home/) or use your favorite package manager. Add the 

In addition, you will need to download the latest version of Java, so if you have not installed Java, visit to the [PLE's Java README page](https://github.com/rtoal/ple/tree/main/java).

Programs in this folder have been tested using CJam 0.6.5 and can be run from the command line like so:

```
java -jar cjam-0.6.5.jar triple.cjam
```

```
java -jar cjam-0.6.5.jar permutations.cjam I like carrots
```

```
java -jar cjam-0.6.5.jar top_ten_scorers.cjam < ../test/wnba_input
```

To run the tests, invoke `.\test.sh` in a Unix-friendly shell or `test.ps1` in PowerShell.

Alternatively, you can use the existing online interpreters:

[Official Online Interpreter by Aditsu](https://cjam.aditsu.net/)  
[Try It Online](https://tio.run/#cjam)

## About CJam

CJam, a stack-based programming language, has been in development since 2014. The creator Aditsu wanted to create a language specifically for code golfing, a practice that focuses on space optimization as a competitive sport. It was especially inspired by GolfScript and they both employ single symbols for high-level operations, which optimizes code for space efficiency.

Notably, the language is currently in the “Alpha” stage and is not yet a finalized product.

## CJam Resources

Continue your study of CJam via:

- [CJam Wiki Home](https://sourceforge.net/p/cjam/wiki/Home/)
- [CJam Tutorial and Docs](https://cjam.readthedocs.io/en/latest/intro.html)
- [CJam Cheat Sheet](http://foldr.moe/cjam.pdf)
- [CJam Interpreter](https://tio.run/#cjam)
- [CJam Code](https://sourceforge.net/p/cjam/code/ci/default/tree/src/net/aditsu/cjam/)

## CJam Open Source Projects

There are some ticket requests on the CJam forum, which you can study and contribute to.

- [CJam Tickets](https://sourceforge.net/p/cjam/tickets/)
