<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/go-logo-64.png">

# Go Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Go knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

<details><summary markdown="1">Who created Go and in what year?</summary>
  
Google, 2009.
</details>

<details><summary markdown="1">What is the url of the Go Language Home Page?</summary>
  
https://golang.org
</details>

<details><summary markdown="1">What kinds of problems was Go crated to solve?</summary>
  
Large scale (Google-sized) problems, running on distributed systems that must be efficient and reliable.
</details>

<details><summary markdown="1">Go programs begin by calling a function called ________________ inside a package called ________________.</summary>
  
`main`<br>`main`
</details>

<details><summary markdown="1">What line of code writes `"Hello, world?`?</summary>
  
`fmt.Printf("Hello, world")`
</details>

<details><summary markdown="1">Must every Go file have a package declaration or is it optional?</summary>
  
It is required. There is no such thing as a default package.
</details>

<details><summary markdown="1">How do you get the command line arguments in a Go program?</summary>
  
They are in `os.Args`. (You have to import `os`.)
</details>

<details><summary markdown="1">How do you split a string `s` on separator `sep`? How do you join the elements of `s` with separator `sep`?</summary>
  
`strings.Split(s, sep)`<br>`strings.Join(s, sep)`
</details>

<details><summary markdown="1">How do you pronounce the type `[]int`?</summary>
  
Slice of integers.
</details>

<details><summary markdown="1">What does the conditional expression look like in Go?</summary>
  
Go does not have a conditional expression. You have to use an `if` statement.
</details>

<details><summary markdown="1">How do you swap the values of two variables?</summary>
  
`x, y = y, x`
</details>

<details><summary markdown="1">Show four different syntaxes for declaring a local variable `found` with initial value `false`.</summary>
  
<ul>
<li>`var found bool`</li>
<li>`var found bool = false`</li>
<li>`var found = false`</li>
<li>`found := false`</li></ul>
</details>

<details><summary markdown="1">Can a variable ever be underfined in Go?</summary>
  
No, if a variable is not explictly initialized in code, Go will initialize it with the zero-value of its type.
</details>

<details><summary markdown="1">How do you write a while-loop in Go?</summary>
  
`for condition { body }`
</details>

<details><summary markdown="1">How do you iterate through the indices of array `a`?</summary>
  
`for i := range a { body }`
</details>

<details><summary markdown="1">How do you iterate through the values of array `a`?</summary>
  
`for _, x := range a { body }`
</details>

<details><summary markdown="1">Question</summary><p>Ans</details>

<details><summary markdown="1">Question</summary><p>Ans</details>
