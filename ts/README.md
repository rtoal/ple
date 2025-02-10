<img src="https://raw.githubusercontent.com/rtoal/ple/main/docs/resources/typescript-logo-64.png">

# TypeScript Explorations

All of the TypeScript examples in this folder are designed to be compiled with the TypeScript compiler `tsc` and run with Node.js. Download and install Node.js from the [Node home page](https://nodejs.org) or use your favorite package manager, then run:

```
npm install -g typescript
```

to get the TypeScript compiler. As this folder already contains the configuration files `tsconfig.json` and `package.json`, you can compile all the files in one shot with:

```
tsc
```

This compiles each of the `.ts` files in this folder into `.js` files which are written to a subfolder called `dist`. You can then switch to that folder and run any of the programs like so:

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

To run the tests on a Unix-like shell:

```
./test.sh
```

# TypeScript Resources

Continue your study of TypeScript via:

- [Awesome TypeScript](https://github.com/dzharii/awesome-typescript)
- Another [Awesome TypeScript](https://github.com/semlinker/awesome-typescript)
- [TypeScript home page](https://www.typescriptlang.org/)
- [Effective TypeScript book](https://effectivetypescript.com/)
- [Type Challenges](https://github.com/type-challenges/type-challenges)
- [TypeScript Deep Dive](https://basarat.gitbook.io/typescript/)

# TypeScript Open Source Projects

You may enjoy:

- [The GitHub Topic Page](https://github.com/topics/typescript)
- [Trending Repositories on GitHub](https://github.com/trending/typescript)
- [Top 100 Starred Repositories on GitHub](https://github.com/EvanLi/Github-Ranking/blob/master/Top100/TypeScript.md)
- [VsCode](https://github.com/microsoft/vscode)
- [Storybook](https://github.com/storybookjs/storybook)
- [React-Three-Fiber](https://github.com/pmndrs/react-three-fiber)
- [Apollo](https://github.com/apollographql/apollo-server)
