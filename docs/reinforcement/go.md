<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/go-logo-64.png">

# Go Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Go knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

<details><summary>Who created Go and in what year?</summary>
Google, 2009.
</details>

<details><summary>What is the url of the Go Language Home Page?</summary>
https://golang.org
</details>

<details><summary>What kinds of problems was Go crated to solve?</summary>
Large scale (Google-sized) problems, running on distributed systems that must be efficient and reliable.
</details>

<details><summary>Go programs begin by calling a function called ________________ inside a package called ________________.</summary>
<pre>
main
main
</pre>
</details>

<details><summary>What line of code writes <code>"Hello, world?</code>?</summary>
<pre>
fmt.Printf("Hello, world")
</pre>
</details>

<details><summary>Must every Go file have a package declaration or is it optional?</summary>
It is required. There is no such thing as a default package.
</details>

<details><summary>How do you get the command line arguments in a Go program?</summary>
They are in <code>os.Args</code>. (You have to import <code>os</code>.)
</details>

<details><summary>How do you split a string <code>s</code> on separator <code>sep</code>? How do you join the elements of <code>s</code> with separator <code>sep</code>?</summary>
<pre>
strings.Split(s, sep)
strings.Join(s, sep)
</pre>
</details>

<details><summary>How do you pronounce the type <code>[]int</code>?</summary>
Slice of integers.
</details>

<details><summary>What does the conditional expression look like in Go?</summary>
Go does not have a conditional expression. You have to use an <code>if</code> statement.
</details>

<details><summary>How do you swap the values of two variables?</summary>
<pre>
x, y = y, x
</pre>
</details>

<details><summary>Show four different syntaxes for declaring a local variable <code>found</code> with initial value <code>false</code>.</summary>
<pre>
var found bool
var found bool = false
var found = false
found := false
</pre>
</details>

<details><summary>Can a variable ever be underfined in Go?</summary>
  No, if a variable is not explictly initialized in code, Go will initialize it with the zero-value of its type.
</details>

<details><summary>How do you write a while-loop in Go?</summary>
<pre>
for condition { body }
</pre>
</details>

<details><summary>How do you iterate through the indices of array <code>a</code>?</summary>
<pre>
for i := range a { body }
</pre>
</details>

<details><summary>How do you iterate through the values of array <code>a</code>?</summary>
<pre>
for _, x := range a { body }
</pre>
</details>

<details><summary>Name all of the built-in integer types in Go. Include all aliases.</summary>
<pre>
int8(byte)   int16   int32(rune)   int64
uint8   uint16   uint32   uint64
int   uint   uintptr
</pre>
</details>

<details><summary>Name all of the built-in floating point and complex number types in Go.</summary>
<pre>
float32   float64
complex64   complex128
</pre>
</details>

<details><summary>For each of the following types, give their default values: <code>int32</code>, <code>complex128</code>, <code>bool</code>, <code>string</code>.</summary>
<pre>
0
0+0i
false
""
</pre>
</details>

<details><summary>What is the value of <code>len("こんにちは世界")</code>? Why is it not 7? What expression, using <code>len</code> and the string <code>"こんにちは世界"</code>, does give 7?</summary>
<code>len("こんにちは世界") is 21 because the UTF-8 encoding of the string has 21 bytes (each rune happens to be encoded in three bytes). The expression <code>len([]rune("こんにちは世界"))</code> is 7, because casting a string to a rune slice will give you a slice with each rune (code point).
</details>

<details><summary>Name the 8 composite types of Go.</summary>
Arrays, functions, structs, maps, pointers, slices, interfaces, channels.
</details>

<details><summary>Question</summary>
</details>

<details><summary>Question</summary>
</details>

<details><summary>Question</summary>
</details>

<details><summary>Question</summary>
</details>

<details><summary>Question</summary>
</details>
