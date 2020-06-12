<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/go-logo-64.png">

# Go Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Go knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

<details><summary>Who created Go and in what year?</summary><p>Google, 2009.</details>

<details><summary>What is the url of the Go Language Home Page?</summary><p>https://golang.org</details>

<details><summary>What kinds of problems was Go crated to solve?</summary><p>Large scale (Google-sized) problems, running on distributed systems that must be efficient and reliable.</details>

<details><summary>Go programs begin by calling a function called ________________ inside a package called ________________.</summary><p>`main`, `main`</details>

<details><summary>What line of code writes `"Hello, world?`?</summary><p>`fmt.Printf("Hello, world")`</details>

<details><summary>Must every Go file have a package declaration or is it optional?</summary><p>It is required. There is no such thing as a default package.</details>

<details><summary>How do you get the command line arguments in a Go program?</summary><p>They are in `os.Args`. (You have to import `os`.)</details>

<details><summary>How do you split a string `s` on separator `sep`? How do you join the elements of `s` with separator `sep`?</summary><p>`strings.Split(s, sep)`<br>`strings.Join(s, sep)`</details>

<details><summary>How do you pronounce the type `[]int`?</summary><p>Slice of integers.</details>

<details><summary>What does the conditional expression look like in Go?</summary><p>Go does not have a conditional expression. You have to use an `if` statement.</details>

<details><summary>How do you swap the values of two variables?</summary><p>`x, y = y, x`</details>

<details><summary>Show four different syntaxes for declaring a local variable `found` with initial value `false`.</summary><ul>
<li>`var found bool`</li>
<li>`var found bool = false`</li>
<li>`var found = false`</li>
<li>`found := false`</li></ul>
</details>

<details><summary>Can a variable ever be underfined in Go?</summary><p>No, if a variable is not explictly initialized in code, Go will initialize it with the zero-value of its type.</details>

<details><summary>How do you write a while-loop in Go?</summary><p>`for condition { body }`</details>

<details><summary>How do you iterate through the indices of array `a`?</summary><p>`for i := range a { body }`</details>

<details><summary>How do you iterate through the values of array `a`?</summary><p>`for _, x := range a { body }`</details>

<details><summary>Question</summary><p>Ans</details>

<details><summary>Question</summary><p>Ans</details>


