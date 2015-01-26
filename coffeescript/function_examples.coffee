square = (x) -> x ** 2
console.log [1..10].map(square)   # passing a function
console.log ((x) -> x * 5) 16     # anonymous function call