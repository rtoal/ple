<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/javascript-logo-64.png">

# JavaScript Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful JavaScript knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

<details><summary>Who created JavaScript and in what year?</summary>Brendan Eich, 1995</details>

<details><summary>What was JavaScript originally called?</summary>Mocha</details>

<details><summary>Why was JavaScript created?</summary>Because Java, the language that was supposed to “run code in the browser” turned out to be too heavy and too slow</details>

<details><summary>How do you write a line of text to the console?</summary><code>console.log(<i>sometext</i>)</code></details>

<details><summary>How do you change the text of an element in a web browser document?</summary><code>element.innerText = <i>sometext</i></code></details>

<details><summary>How do you access the third command line argument of a script, run on the command line, with node.</summary><code>process.argv[2]</code></details>js?

<details><summary>Name the 8 data types of JavaScript (as of ES2020).</summary>Undefined, Null, Boolean, Number, String, Symbol, BigInt, Object</details>

<details><summary>What is the difference between `null` and `undefined`?</summary><code>null</code> indicates the known absence of informationl <code>undefined</code> indicates not knowing a value</details>

<details><summary>How can you tell whether a number (a regular number, not a <code>BigInt</code>) is an integer or not?</summary><code>Number.isInteger(<i>x</i>)</code></details>

<details><summary>What are <b>safe integers</b> in JavaScript?</summary>Numbers in the range where representable values are packed tightly enough together that all integers are representable</details>

<details><summary>If <code>x</code> has the value <code>NaN</code>, what is the value of the expression `x === NaN`? Why? What is the correct way to determine if an expression has the value `NaN`?</summary><code>isNaN(x)</code></details>

<details><summary>How can you tell whether string `s` is a substring of string `t`?</summary><code>t.includes(s)</code></details>

<details><summary>What two things can you do with backtick-delimited strings you can’t do with strings delimited with apostrophes or quotation marks?</summary>Interpolate and represent multiline strings directly</details>

<details><summary>Why does `"🤣".length` have the value 2?</summary>The <code>length</code> method counts UTF-16 code units, not characters</details>

<details><summary>Give an example that shows the <code>==</code> operator is not transitive.</summary><code>"0x10" == 16</code>, <code>16 == "16"</code>, <code>"0x10" != "16"</code></details>

<details><summary>Why is <code>2 && 3</code> equal to 3, but <code>2 & 3</code> equal to 2?</summary>The former is a short circuit logical AND: since 2 is truthy it produces 3; the latter is just binary AND, and you can see that <code>0b0010 & 0b0011 === 0b0010</code></details>

<details><summary>Name all the falsy values in JavaScript.</summary><code>undefined</code>, <code>null</code>, <code>false</code>, <code>+0</code>, <code>-0</code>, <code>0n</code>, <code>NaN</code>, <code>""</code></details>

<details><summary>Name all the nullish values in JavaScript.</summary><code>undefined</code>, <code>null</code></details>

<details><summary>How do you determine the type of an expression at runtime?</summary><code>typeof(<i>e</i>)</code> produces the true type, but sometimes, <code><i>e</i>.constructor</code> will give you what you think of a type</details>

<details><summary>When should you use <code>let</code> and when should you use <code>const</code>?</summary>Bind with <code>let</code> if you will be changing the value bound to the indentifier; bind with <code>const</code> when the binding should be permanent</details>

<details><summary>What bad thing will happen if you forget to use <code>let</code>, <code>const</code>, or <code>var</code> when declaring an identifier?</summary>JavaScript creates a new property on the global object, a new global variable (!!), or if a variable already existed with that name, it is assigned to</details>

<details><summary>What is the object literal `{ x, y }` a shorthand for?</summary><code>{ x: x, y: y}</code></details>

<details><summary>What is the difference between `p.x` and `p[x]`?</summary><code>p.x</code> accesses the property of <code>p</code> named <code>"x"</code>; <code>p[x]</code> accesses the property of <code>p</code> whose name is the value stored in the variable <code>x</code></details>

<details><summary>If <code>x === 'y'</code> then what is <code>{ x: 3, [x]: 5 }</code>?</summary></details>

<details><summary>Why is `[1,12] < [1,3]` true but `[1,42] < [1,3]` false?</summary></details>

<details><summary>What is the difference between a deep copy and a shallow copy?</summary></details>

<details><summary>What is the **spread operator**? Give an example of its use.</summary></details>

<details><summary>How do you write an _object_ to the console (beautifully formatted)?</summary></details>

<details><summary>Describe how a prototype-based language (like JavaScript) differs from a class-based language (like Java), in terms of thinking about collections of objects that share the same structure and behavior.</summary></details>

<details><summary>Properties defined directly within an object are called ________________ properties. Properties of an object accessible on the object’s prototype chain are called ________________ properties.</summary></details>

<details><summary>What do we mean when we say arrays are objects in JavaScript?</summary></details>

<details><summary>Describe how `splice` works.</summary></details>

<details><summary>Why is using a spread operator inside `[` and `]` different from using it inside `{` and `}`?</summary></details>

<details><summary>You might often see the expression `a.slice()`, for some array `a`. What does this expression do, </summary></details>exactly?

<details><summary>How does one best create an array of size 100 in which every element is 0? (Do not write a loop.)</summary></details>

<details><summary>How does one create an array of 50 random numbers with a loop?</summary></details>

<details><summary>How does one create an array of 50 random number without a loop?</summary></details>

<details><summary>Write an equivalent expression to `a.concat(b)`, where `a` and `b` are arrays, using spreads.</summary></details>

<details><summary>`a.push()` mutates `a`. How do you do a non-mutating “push“?</summary></details>

<details><summary>What does `unshift` do? Does it mutate or not? What does it return?</summary></details>

<details><summary>What is the difference between **value types** and **reference types**?</summary></details>

<details><summary>Why do you think the JavaScript designer decided that objects should be reference types?</summary></details>

<details><summary>Since strings can be very large, you might think strings would be reference types in JavaScript. After all, they are reference types in Java. But in JavaScript, they are considered primitive (value) types. This might lead you to believe JavaScript is necessarily slow because strings are always copied on assignment. However, this is not the case! Why?</summary></details>

<details><summary>Write an IIFE that applies the (anonymous, arrow) function that squares its argument to the value </summary></details>100.

<details><summary>In the function definition `function f(x, y) { return [x, y]; }`, what do we call `x` and `y`?</summary></details>

<details><summary>In the function call `f(y, z)`, what do we call `y` and `z`?</summary></details>

<details><summary>A function is called **higher-order** if it does at least one of two things. What two things?</summary></details>

<details><summary>What do the array methods `map`, `filter`, `every`, `some`, `find`, and `findIndex` do?</summary></details>

<details><summary>Write an expression to compute the product of odd numbers in an arrays, using `filter`, `map`, and `reduce`?</summary></details>

<details><summary>Write the function `function f(x = 3) { return x * y }` (where `y` is some global variable) without using a default parameter.</summary></details>

<details><summary>What is a **rest parameter**? Give an example.</summary></details>

<details><summary>Can a function definition have multiple rest parameters? Why or why not?</summary></details>

<details><summary>One could argue that all non-default parameters are really default parameters. Why?</summary></details>

<details><summary>In many languages, assignment has the form IDENTIFIER = EXPRESSION. In JavaScript, the left hand side is _not_ just an identifier. What exactly is the left hand side called?</summary></details>

<details><summary>The old-fashioned to write a function that takes in an array and returns the sum of its first and third elements is: `function f(a) {return a[0] + a[2];}` Rewrite this in a modern fashion, where the function parameter is a pattern.</summary></details>

<details><summary>Write a function that takes in an object and returns the product of its `x` and `y` properties. If no argument is passed, return. Write the function using a pattern for its parameter. Supply defaults so the function body is simply `return x * y;`.</summary></details>

<details><summary>Show how to declare the function that is called like this: `push({onTheStack: s, theValue: v})`? Use an object pattern in the parameter list.</summary></details>

<details><summary>What are **global scope**, **function scope**, and **block scope**?</summary></details>

<details><summary>How do let-bound and var-bound function-scope variables differ? (Make sure the phrase “temporal dead zone” appears in your answer.)</summary></details>

<details><summary>Write a function that takes in a number and returns a function that adds that number to its argument. Is the function you wrote higher-order? Why or why not? Does that function illustrate a closure? Why or why not? Does that function illustrate currying? Why or why not?</summary></details>

<details><summary>What is currying good for, anyway?</summary></details>

<details><summary>Is JavaScript statically-scoped or dynamically scoped?</summary></details>

<details><summary>Do JavaScript functions exhibit shallow binding or deep binding?</summary></details>

<details><summary>Given `function* f() {yield 1; yield 2; yield 3;}`, what is wrong with writing `for (let i of f) </summary></details>{console.log(i)}`?

<details><summary>Why must (pretty much all reasonable) _methods_ be non-arrow functions?</summary></details>

<details><summary>Why should callbacks generally be arrow functions?</summary></details>

<details><summary>What does the expression `this` refer to inside of a function called with the `new` operator?</summary></details>

<details><summary>Is `this` early-bound or late-bound?</summary></details>

<details><summary>For function `f` and object `x`, the expressions `f.call(x, 1, 2)` and `f.apply(x, [1, 2])` produce the same result. Write the equivalent expression using `bind`.</summary></details>

<details><summary>JavaScript doesn’t have classes, but it does have the word `class`. But the keyword `class` does declare a function. How is this “function” defined? Give a short example.</summary></details>

<details><summary>What happens under the hood when you write `class A extends B`? In particular what does `A.prototype` look like in this case?</summary></details>

<details><summary>How do you make a JavaScript object without a prototype?</summary></details>

<details><summary>When would you see a `TypeError` thrown? A `RangeError`? A `SyntaxError`? A `ReferenceError`?</summary></details>

<details><summary>What is **callback hell**?</summary></details>

<details><summary>What is an advantage of promises over callbacks?</summary></details>

<details><summary>What exactly _is_ a promise?</summary></details>

<details><summary>What does the function `async function five() { return 5; }` actually return?</summary></details>

<details><summary>Given `let f = async x => 1` and `let g = async => 2` what do the expressions `f()` and `g()` </summary></details>return? Why? Why is the definition of `g` even acceptable?

<details><summary>What are the most common names given to the parameters of the `Promise` constructor? What are </summary></details>they for?

<details><summary>What is the difference between `p.then(f, g)` and `p.then(f).catch(g)` for a promise `p`?</summary></details>

<details><summary>Why do most API invocations, or operating system calls (like reading and writing files) take in </summary></details>callbacks or return promises?

<details><summary>Give the expression, in client-side JavaScript using `fetch`, that hits the (hypothetical) endpoint `https://api.example.com/fortunes?limit=5` and, from its JSON response, places the first result in the DOM into the element with id `fortune`.</summary></details>

<details><summary>Does `await` actually wait (block) for anything? It not, what exactly does it do?</summary></details>

<details><summary>How does one “wait” for a whole bunch of async functions to all ”finish”?</summary></details>

<details><summary>What is the difference between an **accessor property** and a **data property**? (Your answer </summary></details>should include all of the attributes for each kind of property.)

<details><summary>How do you make a property read-only?</summary></details>

<details><summary>What is the difference between sealing and freezing an object?</summary></details>

<details><summary>How do you get the prototype of an object?</summary></details>

<details><summary>How do you set an object’s prototype after the object has already been created?</summary></details>

<details><summary>What is the difference between `Object.keys` and `Object.getOwnPropertyNames`?</summary></details>

<details><summary>How does `Object.entries` work?</summary></details>
