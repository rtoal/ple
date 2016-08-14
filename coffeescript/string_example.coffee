example =
  multi: "This is
    really a one line
    string"
  block: """
    One
    Two
      TwoPointFive
    Three
    """

console.log example.multi
console.log example.block