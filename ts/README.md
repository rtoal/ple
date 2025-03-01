<img src="https://raw.githubusercontent.com/rtoal/ple/main/docs/resources/typescript-logo-64.png">

# TypeScript Explorations

The TypeScript examples in this folder are designed to be compiled with the TypeScript compiler `tsc` and run with Node.js. Download and install Node.js from the [Node home page](https://nodejs.org) or use your favorite package manager, then run:

```
npm install -g typescript
```

to get the TypeScript compiler. As this folder already contains the configuration files `tsconfig.json` and `package.json`, you can compile all the files in one shot with:

```
tsc
```

This compiles each of the `.ts` files in this folder into `.js` files which are written to a subfolder called `dist`. (We’ve tested them with Typescript 5.8.0.) You can then switch to that folder and run any of the programs like so:

```
node triple.js
```

```
node permutations.js I like carrots
```

```
node top_ten_scorers.js < ../test/wnba_input
```

Rather than working with a REPL, TypeScript experimentation is usually done in the official [TypeScript Playground](https://www.typescriptlang.org/play).

To run the tests, invoke `./test.sh` in a Unix-friendly shell or `test.ps1` in PowerShell. The test script compiles the files, moves to the dist folder, runs the tests, and moves you back to this folder.

## About

TypeScript is a superset of JavaScript adding static type checking, optional type annotations, interfaces and more. Type checking of identifiers is sensitive to the location of the identifier in the code. The language was created by Anders Hejlsberg at Microsoft and first released in 2012.

## Resources

- [Language Home](https://www.typescriptlang.org/)
- [Awesome TypeScript](https://github.com/dzharii/awesome-typescript)
- Another [Awesome TypeScript](https://github.com/semlinker/awesome-typescript)
- [Effective TypeScript book](https://effectivetypescript.com/)
- [Type Challenges](https://github.com/type-challenges/type-challenges)
- [TypeScript Deep Dive](https://basarat.gitbook.io/typescript/)
- [TypeScript at Rosetta Code](https://rosettacode.org/wiki/Category:TypeScript)
- [TypeScript in 100 Seconds](https://www.youtube.com/watch?v=zQnBQ4tB3ZA)

## In Open Source

- [The GitHub Topic Page](https://github.com/topics/typescript)
- [Trending Repositories on GitHub](https://github.com/trending/typescript)
- [Top 100 Starred Repositories on GitHub](https://github.com/EvanLi/Github-Ranking/blob/master/Top100/TypeScript.md)
- [VsCode](https://github.com/microsoft/vscode)
- [Storybook](https://github.com/storybookjs/storybook)
- [React-Three-Fiber](https://github.com/pmndrs/react-three-fiber)
- [Apollo](https://github.com/apollographql/apollo-server)
