<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/javascript-logo-64.png">

# JavaScript Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful JavaScript knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

<details><summary>Who created JavaScript and in what year?</summary>Brendan Eich, 1995</details>

<details><summary>What was JavaScript originally called?</summary>Mocha</details>

<details><summary>Why was JavaScript created?</summary>Because Java, the language that was supposed to “run code in the browser” turned out to be too heavy and too slow</details>

<details><summary>How do you write a line of text to the console?</summary><code>console.log(<i>sometext</i>)</code></details>

<details><summary>How do you change the text of an element in a web browser document?</summary><code><i>element</i>.innerText = <i>sometext</i></code></details>

<details><summary>How do you access the third command line argument of a script, run on the command line, with node?</summary><code>process.argv[2]</code></details>

<details><summary>Name the 8 data types of JavaScript (as of ES2020).</summary>Undefined, Null, Boolean, Number, String, Symbol, BigInt, Object</details>

<details><summary>What is the difference between <code>null</code> and <code>undefined</code>?</summary><code>null</code> indicates the known absence of informationl <code>undefined</code> indicates not knowing a value</details>

<details><summary>How can you tell whether a number (a regular number, not a <code>BigInt</code>) is an integer or not?</summary><code>Number.isInteger(<i>x</i>)</code></details>

<details><summary>What are <b>safe integers</b> in JavaScript?</summary>Numbers in the range where representable values are packed tightly enough together that all integers are representable</details>

<details><summary>If <code>x</code> has the value <code>NaN</code>, what is the value of the expression <code>x === NaN</code>? Why? What is the correct way to determine if an expression has the value <code>NaN</code>?</summary>It’s <code>false</code> because <code>===</code> by definition produces <code>false</code> when one of its operands is <code>NaN</code>. You need to invoke <code>isNaN(x)</code></details>

<details><summary>How can you tell whether string <code>s</code> is a substring of string <code>t</code>?</summary><code>t.includes(s)</code></details>

<details><summary>What two things can you do with backtick-delimited strings you can’t do with strings delimited with apostrophes or quotation marks?</summary>Interpolate and represent multiline strings directly</details>

<details><summary>Why does <code>"🤣".length</code> have the value 2?</summary>The <code>length</code> method counts UTF-16 code units, not characters</details>

<details><summary>Give an example that shows the <code>==</code> operator is not transitive.</summary><code>"0x10" == 16</code>, <code>16 == "16"</code>, <code>"0x10" != "16"</code></details>

<details><summary>Why is <code>2 && 3</code> equal to 3, but <code>2 & 3</code> equal to 2?</summary>The former is a short circuit logical AND: since 2 is truthy it produces 3; the latter is just binary AND, and you can see that <code>0b0010 & 0b0011 === 0b0010</code></details>

<details><summary>Name all the falsy values in JavaScript.</summary><code>undefined</code>, <code>null</code>, <code>false</code>, <code>+0</code>, <code>-0</code>, <code>0n</code>, <code>NaN</code>, <code>""</code></details>

<details><summary>Name all the nullish values in JavaScript.</summary><code>undefined</code>, <code>null</code></details>

<details><summary>How do you determine the type of an expression at runtime?</summary><code>typeof(<i>e</i>)</code> produces the true type, but sometimes, <code><i>e</i>.constructor</code> will give you what you think of a type</details>

<details><summary>When should you use <code>let</code> and when should you use <code>const</code>?</summary>Bind with <code>let</code> if you will be changing the value bound to the indentifier; bind with <code>const</code> when the binding should be permanent</details>

<details><summary>What bad thing will happen if you forget to use <code>let</code>, <code>const</code>, or <code>var</code> when declaring an identifier?</summary>JavaScript creates a new property on the global object, a new global variable (!!), or if a variable already existed with that name, it is assigned to</details>

<details><summary>What is the object literal <code>{ x, y }</code> a shorthand for?</summary><code>{ x: x, y: y}</code></details>

<details><summary>What is the difference between <code>p.x</code> and <code>p[x]</code>?</summary><code>p.x</code> accesses the property of <code>p</code> named <code>"x"</code>; <code>p[x]</code> accesses the property of <code>p</code> whose name is the value stored in the variable <code>x</code></details>

<details><summary>If <code>x === 'y'</code> then what is <code>{ x: 3, [x]: 5 }</code>?</summary><code>{x: 3, y: 5}</code></details>

<details><summary>Why is <code>[1,12] < [1,3]</code> true but <code>[1,42] < [1,3]</code> false?</summary></details>

<details><summary>What is the difference between a deep copy and a shallow copy?</summary></details>

<details><summary>What is the <b>spread operator</b>? Give an example of its use.</summary></details>

<details><summary>How do you write an <i>object</i> to the console (beautifully formatted)?</summary></details>

<details><summary>Describe how a prototype-based language (like JavaScript) differs from a class-based language (like Java), in terms of thinking about collections of objects that share the same structure and behavior.</summary></details>

<details><summary>Properties defined directly within an object are called ________________ properties. Properties of an object accessible from the object’s prototype chain are called ________________ properties.</summary>Own; inherited</details>

<details><summary>If <code>p == {x: 1, y: 8}</code> what is <code>Object.entries(x)</code>?</summary><code>[ [x, 1], [y, 8] ]</code></details>

<details><summary>If <code>a == ["x", "y"]</code> what is <code>a.entries()</code>?</summary><code>An iterator that produces <code>[0, "x"]</code> and then <code>[1, "y"]</code></details>

<details><summary>What do we mean when we say arrays are objects in JavaScript?</summary>All types other than the seven primitive types in JavaScript are objects, hence arrays are objects</details>

<details><summary>Describe how <code>splice</code> works.</summary>It deletes zero or more elements from a given position in an array and optionally replaces these values with (an arbitrary nunber of) new elements. It returns the deleted elements in a new array</details>

<details><summary>Why is using a spread operator inside <code>[</code> and <code>]</code> different from using it inside <code>{</code> and <code>}</code>?</summary></details>

<details><summary>You might often see the expression <code>a.slice()</code>, for some array <code>a</code>. What does this expression do, exactly?</summary>It makes a shallow copy of <code>a</code></details>

<details><summary>How does one best create an array of size 100 in which every element is 0? (Do not write a loop.)</summary><code>Array(100).fill(0)</code></details>

<details><summary>How does one create an array of 50 random numbers with a loop?</summary><code>const a = []; while (a.length < 50) { a.push(Math.random()) }</code></details>

<details><summary>How does one create an array of 50 random number without a loop?</summary></details>

<details><summary>Write an equivalent expression to <code>a.concat(b)</code>, where <code>a</code> and <code>b</code> are arrays, using spreads.</summary><code>[...a, ...b]</code></details>

<details><summary><code>a.push()</code> mutates <code>a</code>. How do you do a non-mutating “push“?</summary></details>

<details><summary>What does <code>unshift</code> do? Does it mutate or not? What does it return?</summary></details>

<details><summary>What is the difference between <b>value types</b> and <b>reference types</b>?</summary></details>

<details><summary>Why do you think the JavaScript designer decided that objects should be reference types?</summary></details>

<details><summary>Since strings can be very large, you might think strings would be reference types in JavaScript. After all, they are reference types in Java. But in JavaScript, they are considered primitive (value) types. This might lead you to believe JavaScript is necessarily slow because strings are always copied on assignment. However, this is not the case! Why?</summary>You don’t need to copy them because they are immutable! So behind the scenes they are probably implemented as references, but the programmer doesn’t care</details>

<details><summary>Write an IIFE that applies, to the argument 100, the (anonymous, arrow) function that squares its argument.</summary><code>(x => x ** 2)(100)</details>

<details><summary>In the function definition <code>function f(x, y) { return [x, y]; }</code>, what do we call <code>x</code> and <code>y</code>?</summary>Parameters</details>

<details><summary>In the function call <code>f(y, z)</code>, what do we call <code>y</code> and <code>z</code>?</summary>Arguments</details>

<details><summary>A function is called <b>higher-order</b> if it does at least one of two things. What two things?</summary>Accept functions as arguments; Return a function</details>

<details><summary>What do the array methods <code>map</code>, <code>filter</code>, <code>every</code>, <code>some</code>, <code>find</code>, and <code>findIndex</code> do?</summary></details>

<details><summary>Write an expression to compute the product of odd numbers in an arrays, using <code>filter</code>, <code>map</code>, and <code>reduce</code>?</summary></details>

<details><summary>Write the function <code>function f(x = 3) { return x * y }</code> (where <code>y</code> is some global variable) without using a default parameter.</summary></details>

<details><summary>What is a <b>rest parameter</b>?</summary>A parameter that rolls up all the excess arguments into a single array. If there are no excess parameters the parameter value will be an empty array</details>

<details><summary>Can a function definition have multiple rest parameters? Why or why not?</summary>No, you wouldn’t know how many excess arguments to give each parameter (unless the language made up a weird rule, but it would be hard to remember and likely not useful in practice)</details>

<details><summary>One could argue that all non-default parameters are really default parameters. Why?</summary>They have a default value of <code>undefined</code>!</details>

<details><summary>In many languages, assignment has the form IDENTIFIER = EXPRESSION. In JavaScript, the left hand side is <em>not</em> just an identifier. What exactly is the left hand side called?</summary>A pattern</details>

<details><summary>The old-fashioned to write a function that takes in an array and returns the sum of its first and third elements is: <code>function f(a) {return a[0] + a[2];}</code> Rewrite this in a modern fashion, where the function parameter is a pattern.</summary></details>

<details><summary>Write a function that takes in an object and returns the product of its <code>x</code> and <code>y</code> properties. If no argument is passed, return 1. Write the function using a pattern for its parameter. Supply defaults so the function body is simply <code>return x * y</code>.</summary>
<pre>
function product({ x = 1, y = 1 }) {
    return x * y
}
</pre></details>

<details><summary>Show how to declare the function that is called like this: <code>push({onTheStack: s, theValue: v})</code>? Use an object pattern in the parameter list.</summary>
<pre>
function push({ onTheStack, theValue })
</pre></details>

<details><summary>What are <b>global scope</b>, <b>function scope</b>, and <b>block scope</b>?</summary></details>

<details><summary>How do let-bound and var-bound function-scope variables differ? (Make sure the phrase “temporal dead zone” appears in your answer.)</summary>Accessing <code>var</code>-bound function scope variables produce <code>undefined</code> in the temporal dead zone; accessing <code>let</code>-bound function scope variables throw a <code>ReferenceError</code></details>

<details><summary>Write a function that takes in a number and returns a function that adds that number to its argument. Is the function you wrote higher-order? Why or why not? Does that function illustrate a closure? Why or why not? Does that function illustrate currying? Why or why not?</summary></details>

<details><summary>What is currying good for, anyway?</summary>Partial application. You can do the computation on the first (few) arguments just once and apply that over and over again in the future</details>

<details><summary>Is JavaScript statically-scoped or dynamically scoped?</summary>Static</details>

<details><summary>Do JavaScript functions exhibit shallow binding or deep binding?</summary>Deep</details>

<details><summary>Given <code>function* f() {yield 1; yield 2; yield 3;}</code>, what is wrong with writing <code>for (let i of f) </summary></details>{console.log(i)}</code>?

<details><summary>Why must (pretty much all reasonable) <em>methods</em> be non-arrow functions?</summary>If it’s a method, it’s more than likely using the <code>this</code> expression which you want to refer to the receiver. An arrow function’s <code>this</code> does not refer to the receiver</details>

<details><summary>Why should callbacks generally be arrow functions?</summary>You don’t want the <code>this</code> expression to refer to the callback function itself</details>

<details><summary>What does the expression <code>this</code> refer to inside of a function called with the <code>new</code> operator?</summary>A newly created object</details>

<details><summary>Is <code>this</code> early-bound or late-bound?</summary>Late bound</details>

<details><summary>For function <code>f</code> and object <code>x</code>, the expressions <code>f.call(x, 1, 2)</code> and <code>f.apply(x, [1, 2])</code> produce the same result. Write the equivalent expression using <code>bind</code>.</summary></details>

<details><summary>JavaScript doesn’t have classes, but it does have the word <code>class</code>. But the keyword <code>class</code> does declare a function. How is this “function” defined? Give a short example.</summary></details>

<details><summary>What happens under the hood when you write <code>class A extends B</code>? In particular what does <code>A.prototype</code> look like in this case?</summary></details>

<details><summary>How do you make a JavaScript object without a prototype?</summary><code>Object.create(null)</code></details>

<details><summary>When would you see a <code>TypeError</code> thrown? A <code>RangeError</code>? A <code>SyntaxError</code>? A <code>ReferenceError</code>?</summary></details>

<details><summary>What is <b>callback hell</b>?</summary>The ugly and complicated nesting that arises from callbacks within callbacks</details>

<details><summary>What are two advantages of promises over callbacks?</summary>One is no callback hell, as promises are elegantly “chained”. Another is error handling is much simpler: a single catch will do!</details>

<details><summary>What exactly is a promise?</summary>An object representing a computation that may finish in the future</details>

<details><summary>What does the function <code>async function five() { return 5; }</code> actually return?</summary>A promise that resolves to 5</details>

<details><summary>Given <code>let f = async x => 1</code> and <code>let g = async => 2</code> what do the expressions <code>f()</code> and <code>g()</code> </summary></details>return? Why? Why is the definition of <code>g</code> even acceptable?

<details><summary>What are the most common names given to the parameters of the <code>Promise</code> constructor? What are they for?</summary></details>

<details><summary>What is the difference between <code>p.then(f, g)</code> and <code>p.then(f).catch(g)</code> for a promise <code>p</code>?</summary></details>

<details><summary>Why do most API invocations, or operating system calls (like reading and writing files), take in callbacks or return promises?</summary>They take an indefinite and possibly long time to complete</details>

<details><summary>Give the expression, in client-side JavaScript using <code>fetch</code>, that hits the (hypothetical) endpoint <code>https://api.example.com/fortunes?limit=5</code> and, from its JSON response, places the first result in the DOM into the element with id <code>fortune</code>.</summary></details>

<details><summary>Does <code>await</code> actually wait (block) for anything? It not, what exactly does it do?</summary></details>

<details><summary>How does one “wait” for a whole bunch of async functions to all ”finish”?</summary></details>

<details><summary>What is the difference between an <b>accessor property</b> and a <b>data property</b>? (Your answer should include all of the attributes for each kind of property.)</summary></details>

<details><summary>How do you make a property read-only?</summary></details>

<details><summary>What is the difference between sealing and freezing an object?</summary></details>

<details><summary>How do you get the prototype of an object?</summary><code>Object.getPrototypeOf(<i>someobject</i>)</details>

<details><summary>How do you set an object’s prototype after the object has already been created?</summary></details>

<details><summary>What is the difference between <code>Object.keys</code> and <code>Object.getOwnPropertyNames</code>?</summary></details>
