<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/berry-logo-64.png" width="64" height="64">

# Berry Explorations

To build and run Berry programs on your local machine, download the zip file and build the compiler from the [Berry GitHub page](https://github.com/berry-lang/berry) or use your favorite package manager. As the standard Berry distribution is written in C, you will need to have `make` installed to build the compiler.

Programs in this folder can be run from the command line like so:

```
berry triple.be
```

```
berry permutations.be I like carrots
```

```
berry top_ten_scorers.be < ../test/wnba_input           # NOT TESTED YET
```

Running the command `berry` with no arguments gives you a repl.

To run the tests on a Unix-like shell:

```
./test.sh
```

Run `test.ps1` in PowerShell.

## About Berry

Berry is an ultra-lightweight dynamically typed scripting language, designed for lower-performance embedded devices. It is used in scripting tasks for embedded devices, primary ESP32 devices running Tasmota firmware. Berry’s advanced features can be used to extend Tasmota by adding commands, adding drivers, extending the web UI, adding full applications (TAPP files), driving advanced graphics with LVGL. The core Berry interpreter requires under 40KiB.

## Berry Resources

Continue your study of Berry with:

- [Berry Home](https://berry-lang.github.io/)
- [Official Documentation](https://berry.readthedocs.io/en/latest/)
- [Berry Online Sandbox](https://berry-lang.github.io/try-online/)

## Berry in Open Source

- [The GitHub Topic Page](https://github.com/topics/berry)
- [GitHub repositories using Berry](https://github.com/search?l=berry&q=stars%3A%3E1&s=stars&type=Repositories)
- [Berry itself is open source](https://github.com/berry-lang/berry)
