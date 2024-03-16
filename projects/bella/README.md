![Logo](https://raw.githubusercontent.com/rtoal/ple/main/projects/bella/docs/bellalogo.png)

# Bella

A simple programming language illustrated in the book _Programming Language Concepts and Implementation_.

```
let dozen = 12;
print(dozen % 3 ** 1);
function gcd(x, y) = return y == 0 ? x : gcd(y, x % y);
while (dozen >= 3 || (gcd(1, 10) != 5)) {
  let y = 0;
  dozen = dozen - 2.75E+19 ** 1 ** 3;
}
```

## Language Specification

The language is specified at its [home page](https://cs.lmu.edu/~ray/notes/bella/).

## Building

Nodejs is required to build and run this project. Make sure you have a recent version of Node, since the source code uses a fair amount of very modern JavaScript.

Clone the repo, then run `npm install`.

You can then run `npm test`.

## Usage

To run from the command line:

```
node src/bella.js <filename> <outputType>
```

The `outputType` indicates what you wish to print to standard output:

<table>
<tr><th>Option</th><th>Description</th></tr>
<tr><td>parsed</td><td>A message indicating the syntax is ok</td></tr>
<tr><td>analyzed</td><td>The program representation (AST-like)</td></tr>
<tr><td>optimized</td><td>The optimized representation</td></tr>
<tr><td>js</td><td>The translation of the program to JavaScript</td></tr>
</table>

Example runs:

```
$ cat examples/small.bella
let x = sqrt(9);
function f(x) = 3 * x;
while (true) {
  x = 3;
  print(0 ? f(x) : 2);
}
```

```
$ node src/bella.js examples/small.bella parsed
Syntax is ok
```

```
$ node src/bella.js examples/small.bella analyzed
   1 | Program statements=[#2,#6,#10]
   2 | VariableDeclaration variable=#3 initializer=#4
   3 | Variable name='x' readOnly=false
   4 | Call callee=#5 args=[9]
   5 | Function name='sqrt' paramCount=1
   6 | FunctionDeclaration fun=#7 params=[#8] body=#9
   7 | Function name='f' paramCount=1
   8 | Variable name='x' readOnly=true
   9 | BinaryExpression op='*' left=3 right=#8
  10 | WhileStatement test=true body=[#11,#12]
  11 | Assignment target=#3 source=3
  12 | PrintStatement argument=#13
  13 | Conditional test=0 consequent=#14 alternate=2
  14 | Call callee=#7 args=[#3]
```

```
$ node src/bella.js examples/small.bella optimized
   1 | Program statements=[#2,#4,#8]
   2 | VariableDeclaration variable=#3 initializer=3
   3 | Variable name='x' readOnly=false
   4 | FunctionDeclaration fun=#5 params=[#6] body=#7
   5 | Function name='f' paramCount=1
   6 | Variable name='x' readOnly=true
   7 | BinaryExpression op='*' left=3 right=#6
   8 | WhileStatement test=true body=[#9,#10]
   9 | Assignment target=#3 source=3
  10 | PrintStatement argument=2
```

```
$ node src/bella.js examples/small.bella js
let x_1 = 3;
function f_3(x_2) {
return (3 * x_2);
}
while (true) {
x_1 = 3;
console.log(2);
}
```

Errors are displayed with a little bit of context:

```
 node src/bella.js examples/bad.bella js
Error: Line 2, col 20:
  1 | let x = 5;
> 2 | function f(x, y) = z + 1;
                         ^
  3 | print f(1, x);
Identifier z not declared
```

## Thanks

This project uses [Ohm](https://ohmjs.org) for much of the front end. Ohm is maintained by [Patrick Dubroy](https://github.com/sponsors/pdubroy).

Marco Berardini chose the language name and took this picture of Bella:

![GoodDog](https://raw.githubusercontent.com/rtoal/ple/main/projects/bella/docs/bella.jpg)
