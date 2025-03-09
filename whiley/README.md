<img src="https://raw.githubusercontent.com/rtoal/ple/main/docs/resources/whiley-logo-64.png">

# Whiley Explorations

You have a couple options to explore Whiley:

<details><summary><b>Install the Whiley Compiler</b></summary>

To install Whiley, you need to have Java installed beforehand. You may also need Cargo (from Rust) installed, depending on your setup.

After getting both of these dependencies stated, type in the following command:

```
cargo install whiley
```

Afterwards, you can start running scripts. Though a bit cumbersome, to run an example code, copy the code from the scripts folder and paste it into `main.whiley`. Another way is to duplicate one of the files from scripts folder to the src folder and then rename it to `main.whiley` (if you run into issues, delete the existing file first). Then finally, at the root folder (`ple/whiley`), perform the following commands:

```
wy build
wy run
```

</details>

## About Whiley

Whiley is an experimental programming language led by David J. Pearce, first introduced in 2010. The purpose of the language is to support the development of a verifying compiler—a concept originally proposed and explored by Antony Hoare, who suggested using mathematical logic to verify a program’s correctness. The Whiley compiler is designed to follow this logic, prioritizing verification.

Rather than building a verifying compiler on top of an existing language, Pearce created Whiley from scratch with verification built into the language itself. One important tool supporting this process is [QuickCheck for Whiley](https://youtu.be/MLcNhc27Ghw?si=5zL2x4CMF3Cd9zIZ), which tests a program by checking that a set of defined properties hold true, helping to identify bugs and mistakes.

Although Whiley is still experimental, it supports the development of web applications, smart contracts, embedded systems, and more—making it a surprisingly versatile language.

## Whiley Resources

Continue your study of Whiley via:

- [Whiley HomePage](https://whiley.org/)
- [Whiley Tutorial](https://whiley.org/pdfs/GettingStartedWithWhiley.pdf)
- [Whiley Documentation](https://github.com/Whiley/WhileyDocs)
- [Whiley Github Repository](https://github.com/Whiley)
- [What Does the Future of Programming Look Like?](https://youtu.be/1KfZH_jjrG4?si=uxflENPZPn7Va7qH)

## Whiley Open Source Projects

Studying and contributing to open-source projects is a great way to deepen your proficiency in any programming language. As Whiley continues to develop, you can get involved by solving issues and contributing to it on GitHub:

- [Whiley Compiler Repository Issues](https://github.com/Whiley/WhileyCompiler/issues)
