export default function generate(program) {
  // When generating code for statements, we'll accumulate the lines of
  // the target code here. When we finish generating, we'll join the
  // lines with newlines and return the result.
  const output = []

  // Variable names in JS will be suffixed with _1, _2, _3, etc. This is
  // because "for", for example, is a legal variable name in Bella, but
  // not in JS. So we want to generate something like "for_1". We handle
  // this by mapping each variable declaration to its suffix.
  const targetName = (mapping => {
    return entity => {
      if (!mapping.has(entity)) {
        mapping.set(entity, mapping.size + 1)
      }
      return `${entity.name}_${mapping.get(entity)}`
    }
  })(new Map())

  function gen(node) {
    // Dispatch the node to the appropriate handler if present.
    // Node types without explicit handlers just "pass through"
    return generators?.[node?.kind]?.(node) ?? node
  }

  const generators = {
    // Key idea: when generating an expression, return the translated
    // string; when generating a statement, write lines of translated
    // code to the output array.
    Program(p) {
      p.statements.forEach(gen)
    },
    VariableDeclaration(d) {
      const target = targetName(d.variable)
      const source = gen(d.initializer)
      output.push(`let ${target} = ${source};`)
    },
    Variable(v) {
      return targetName(v)
    },
    FunctionDeclaration(d) {
      const params = d.fun.params.map(targetName).join(", ")
      output.push(`function ${targetName(d.fun)}(${params}) {`)
      output.push(`return ${gen(d.body)};`)
      output.push("}")
    },
    Function(f) {
      return targetName(f)
    },
    PrintStatement(s) {
      output.push(`console.log(${gen(s.argument)});`)
    },
    Assignment(s) {
      output.push(`${targetName(s.target)} = ${gen(s.source)};`)
    },
    WhileStatement(s) {
      output.push(`while (${gen(s.test)}) {`)
      s.body.forEach(gen)
      output.push("}")
    },
    Call(c) {
      const args = c.args.map(gen)
      const callee = gen(c.callee)
      return `${callee}(${args.join(",")})`
    },
    Conditional(e) {
      const test = gen(e.test)
      const consequent = gen(e.consequent)
      const alternate = gen(e.alternate)
      return `((${test}) ? (${consequent}) : (${alternate}))`
    },
    BinaryExpression(e) {
      return `(${gen(e.left)} ${e.op} ${gen(e.right)})`
    },
    UnaryExpression(e) {
      return `${e.op}(${gen(e.operand)})`
    },
  }

  gen(program)
  return output.join("\n")
}
