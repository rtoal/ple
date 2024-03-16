import assert from "node:assert/strict"
import parse from "../src/parser.js"
import analyze from "../src/analyzer.js"
import optimize from "../src/optimizer.js"
import * as core from "../src/core.js"

// Make some test cases easier to read
const x = core.variable("x", false)
const neg = x => core.unary("-", x)
const power = (x, y) => core.binary("**", x, y)
const cond = (x, y, z) => core.conditional(x, y, z)
const call = (f, args) => core.call(f, args)
const letXEq1 = core.variableDeclaration(x, 1)
const print = e => core.printStatement(e)
const parameterless = name => core.fun(name, 0)
const program = p => analyze(parse(p))
const expression = e => program(`let x=1; print ${e};`).statements[1].argument

const tests = [
  ["folds +", expression("5 + 8"), 13],
  ["folds -", expression("5 - 8"), -3],
  ["folds *", expression("5 * 8"), 40],
  ["folds /", expression("5 / 8"), 0.625],
  ["folds %", expression("17 % 5"), 2],
  ["folds **", expression("5 ** 8"), 390625],
  ["optimizes +0", expression("x + 0"), x],
  ["optimizes -0", expression("x - 0"), x],
  ["optimizes *1", expression("x * 1"), x],
  ["optimizes /1", expression("x / 1"), x],
  ["optimizes *0", expression("x * 0"), 0],
  ["optimizes 0*", expression("0 * x"), 0],
  ["optimizes 0/", expression("0 / x"), 0],
  ["optimizes 0+", expression("0 + x"), x],
  ["optimizes 0-", expression("0 - x"), neg(x)],
  ["optimizes 1*", expression("1 * x"), x],
  ["folds negation", expression("- 8"), -8],
  ["optimizes 1**", expression("1 ** x"), 1],
  ["optimizes **0", expression("x ** 0"), 1],
  ["optimizes deeply", expression("8 * (-5) + 2 ** 3"), -32],
  ["optimizes true conditionals", expression("1?3:5"), 3],
  ["optimizes false conditionals", expression("0?3:5"), 5],
  ["leaves nonoptimizable binaries alone", expression("x ** 5"), power(x, 5)],
  ["leaves 0**0 alone", expression("0 ** 0"), power(0, 0)],
  ["leaves nonoptimizable conditionals alone", expression("x?x:2"), cond(x, x, 2)],
  ["leaves nonoptimizable negations alone", expression("-x"), neg(x)],
  [
    "optimizes in function body",
    program("function f() = 1+1;"),
    core.program([core.functionDeclaration(parameterless("f"), [], 2)]),
  ],
  ["removes x=x", program("let x=1; x=x; print(x);"), core.program([letXEq1, print(x)])],
  [
    "optimizes while test",
    program("while 1+2 {}"),
    core.program([core.whileStatement(3, [])]),
  ],
]

describe("The optimizer", () => {
  for (const [scenario, before, after] of tests) {
    it(`${scenario}`, () => {
      assert.deepEqual(optimize(before), after)
    })
  }
})
