<img src="https://raw.githubusercontent.com/rtoal/ple/master/docs/resources/ada-logo-64.png">

# Ada Explorations

To build and run Ada programs on your local machine, download [Alire](https://ada-lang.io), the package manager for Ada. Follow the installation instructions, which includes removing a quarantine attribute that may be set on the binary:

```
xattr -d com.apple.quarantine bin/alr
```

Next, set up the toolchain by running:

```
alr toolchain --select
```

Be sure to choose `gnat_native` and `gprbuild` as your toolchain components.

## About Ada

Ada is the first internationally standardized object-oriented language. The language was designed to facilitate the design of large, long-lived, efficient, reliable software systems. It is particularly useful in concurrent, distributed, real-time, and embedded systems. It is an extremely safe language and is thus primarily used today in avionics, air traffic control, rail systems, embedded systems, medical devices, and communication.

## Resources

- [Language Home](https://ada-lang.io/)
- [Ada Information Clearinghouse](https://www.adaic.org/)
- [Documentation Repository, with links to the Reference Manual](https://docs.adacore.com/live/wave/)
- [Ada Wikibook](https://en.wikibooks.org/wiki/Ada_Programming)
- [Ada Overview](https://www.adaic.org/advantages/ada-overview/)
- [Awesome Ada](https://github.com/ohenley/awesome-ada)
- [Ada at Rosetta Code](https://rosettacode.org/wiki/Category:Ada)

## In Open Source

- [The GitHub Topic Page](https://github.com/topics/ada)
