function interpret(program) {
  const stack = []
  function push(x) {
    stack.push(Number(x))
  }
  function pop() {
    if (stack.length === 0) throw 'Not enough operands'
    return stack.pop()
  }
  for (const token of program.trim().split(/\s+/)) {
    let x, y
    if (/^\d+(\.\d+)?$/.test(token)) push(token)
    else if (token === 'N') (x = pop()), push(-x)
    else if (token === '+') (y = pop()), (x = pop()), push(x + y)
    else if (token === '-') (y = pop()), (x = pop()), push(x - y)
    else if (token === '*') (y = pop()), (x = pop()), push(x * y)
    else if (token === '/') (y = pop()), (x = pop()), push(x / y)
    else if (token === 'P') (x = pop()), console.log(x)
    else throw 'Illegal Instruction'
  }
}
