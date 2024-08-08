<img src="https://raw.githubusercontent.com/rtoal/ple/master/docs/resources/ada-logo-64.png">

# Ada Explorations
To build and run Ada programs on your local machine, start by downloading [Alire](https://ada-lang.io), the package manager for Ada. During installation, remove the quarantine flag using the following command:

```
xattr -d com.apple.quarantine bin/alr
```

Next, set up the toolchain by running:

```
alr toolchain --select
```
Be sure to choose `gnat_native` and `gprbuild` as your toolchain components.

## About Ada

Ada is a statically-typed, imperative, and object oriented language. The language, conceived around 1980, is favored for its high-level programming aspects, compiler checking rather than runtime errors, increased safety, and mantainability. Primarily developed for embedded systems, the language has since become a focal point for the design and specification of data but more so for its long lived applications where efficiency and reliability are paramount.
 
## Ada Resources

- [Ada Home](https://ada-lang.io/)
- [Ada Docs Home](https://ada-lang.io/docs/arm/AA-1/)
- [Ada Overview](https://www.adaic.org/advantages/ada-overview/)

## Ada Open Source Projects

Studying, and contributing to, open source projects is an excellent way to improve your proficiency in any language. Here a few to start with:
- [Synth Lab](https://github.com/raph-amiard/ada-synth-lib)
- [Ada for Microcontrollers](https://github.com/rowsail/AdaForMicrocontrollers)
