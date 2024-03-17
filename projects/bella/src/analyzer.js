// The semantic analyzer exports a single function, analyze(match),
// that accepts a grammar match object (the CST) from Ohm and produces
// the internal representation of the program (pretty close to what is
// usually called the AST).

import * as core from "./core.js"

// The single gate for error checking. Pass in a condition that must be
// true. Use errorLocation to give contextual information about the error
// that will appear: this should be an object whose "at" property is a
// parse tree node. Ohm's getLineAndColumnMessage will be used to prefix
// the error message.
function check(condition, message, errorLocation) {
  if (!condition) {
    const prefix = errorLocation.at.source.getLineAndColumnMessage()
    throw new Error(`${prefix}${message}`)
  }
}

class Context {
  constructor({ parent = null } = {}) {
    Object.assign(this, { parent, locals: new Map() })
  }
  add(id, entity) {
    const name = id.sourceString
    check(!this.locals.has(name), `${name} redeclared`, { at: id })
    this.locals.set(name, entity)
  }
  get(name) {
    return this.locals.get(name) || this.parent?.get(name)
  }
  lookup(id, { expecting: kind }) {
    const name = id.sourceString
    const entity = this.get(name)
    check(entity, `${name} not declared`, { at: id })
    check(entity?.kind === kind, `${name} is not a ${kind}`, { at: id })
    return entity
  }
}

export default function analyze(match) {
  // Track the context manually via a simple variable. Add to this context
  // as necessary. When needing to descent into a new scope, create a new
  // context with the current context as its parent. When leaving a scope,
  // reset this variable to its parent context.
  let context = new Context()

  const semantics = match.matcher.grammar.createSemantics()

  const builder = semantics.addOperation("rep", {
    Program(statements) {
      return core.program(statements.children.map(s => s.rep()))
    },

    Statement_vardec(_let, id, _eq, exp, _semicolon) {
      // Analyze the initializer *before* adding the variable to the context,
      // because we don't want the variable to come into scope until after
      // the declaration. That is, "let x=x;" should be an error (unless x
      // was already defined in an outer scope.)
      const initializer = exp.rep()
      const variable = core.variable(id.sourceString, false)
      context.add(id, variable)
      return core.variableDeclaration(variable, initializer)
    },

    Statement_fundec(_fun, id, parameters, _equals, exp, _semicolon) {
      // Start by adding a new function object to this context. We
      // won't have the params yet; we'll get them later. But we need
      // the function in the context right way, to allow recursion.
      const fun = core.fun(id.sourceString, [])
      context.add(id, fun)

      // Add the params and body to the child context, updating the
      // function object with the parameter count once we have it.
      context = new Context({ parent: context })
      fun.params = parameters.rep()
      const body = exp.rep()
      context = context.parent

      // Now everything is ready to make the declaration entity.
      return core.functionDeclaration(fun, body)
    },

    Params(_open, idList, _close) {
      // Add all to current context and return them in an array.
      return idList.asIteration().children.map(id => {
        const param = core.variable(id.sourceString, true)
        context.add(id, param)
        return param
      })
    },

    Statement_assign(id, _eq, exp, _semicolon) {
      return core.assignment(id.rep(), exp.rep())
    },

    Statement_print(_print, exp, _semicolon) {
      return core.printStatement(exp.rep())
    },

    Statement_while(_while, exp, block) {
      return core.whileStatement(exp.rep(), block.rep())
    },

    Block(_open, statements, _close) {
      return statements.children.map(s => s.rep())
    },

    Exp_unary(op, exp) {
      return core.unary(op.sourceString, exp.rep())
    },

    Exp_ternary(exp1, _questionMark, exp2, _colon, exp3) {
      return core.conditional(exp1.rep(), exp2.rep(), exp3.rep())
    },

    Exp1_binary(exp1, op, exp2) {
      return core.binary(op.sourceString, exp1.rep(), exp2.rep())
    },

    Exp2_binary(exp1, op, exp2) {
      return core.binary(op.sourceString, exp1.rep(), exp2.rep())
    },

    Exp3_binary(exp1, op, exp2) {
      return core.binary(op.sourceString, exp1.rep(), exp2.rep())
    },

    Exp4_binary(exp1, op, exp2) {
      return core.binary(op.sourceString, exp1.rep(), exp2.rep())
    },

    Exp5_binary(exp1, op, exp2) {
      return core.binary(op.sourceString, exp1.rep(), exp2.rep())
    },

    Exp6_binary(exp1, op, exp2) {
      return core.binary(op.sourceString, exp1.rep(), exp2.rep())
    },

    Exp7_parens(_open, exp, _close) {
      return exp.rep()
    },

    Exp7_call(id, _open, expList, _close) {
      // ids used in calls must have been declared and must be bound
      // to function entities, not to variable entities.
      const callee = context.lookup(id, { expecting: "Function" })
      const args = expList.asIteration().children.map(arg => arg.rep())
      const [argCount, paramCount] = [args.length, callee.params.length]
      const error = `${paramCount} arg(s) required but ${argCount} passed`
      check(argCount === paramCount, error, { at: id })
      return core.call(callee, args)
    },

    Exp7_id(id) {
      // ids used in expressions must have been declared and must be
      // bound to variable entities, not to function entities.
      return context.lookup(id, { expecting: "Variable" })
    },

    true(_) {
      return 1
    },

    false(_) {
      return 0
    },

    num(_whole, _point, _fraction, _e, _sign, _exponent) {
      return Number(this.sourceString)
    },
  })

  return builder(match).rep()
}
