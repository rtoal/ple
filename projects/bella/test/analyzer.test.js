import assert from "node:assert/strict"
import parse from "../src/parser.js"
import analyze from "../src/analyzer.js"
import * as core from "../src/core.js"

const semanticChecks = [
  ["variables can be printed", "let x = 1; print x;"],
  ["variables can be reassigned", "let x = 1; x = x * 5 / ((-3) + x);"],
  ["all predefined identifiers", "print ln(sqrt(sin(cos(hypot(π,1) + exp(5.5E2)))));"],
]

const semanticErrors = [
  ["using undeclared identifiers", "print(x);", /Identifier x not declared/],
  ["a variable used as function", "x = 1; x(2);", /Expected "="/],
  ["a function used as variable", "print(sin + 1);", /Functions can not appear here/],
  ["re-declared identifier", "let x = 1; let x = 2;", /Identifier x already declared/],
  ["an attempt to write a read-only var", "π = 3;", /π is read only/],
  ["too few arguments", "print(sin());", /1 argument\(s\) required but 0 passed/],
  ["too many arguments", "print(sin(5, 10));", /1 argument\(s\) required but 2 passed/],
]

const sample = "let x=sqrt(9);function f(x)=3*x;while(true){x=3;print(0?f(x):2);}"

describe("The analyzer", () => {
  for (const [scenario, source] of semanticChecks) {
    it(`recognizes ${scenario}`, () => {
      assert.ok(analyze(parse(source)))
    })
  }
  for (const [scenario, source, errorMessagePattern] of semanticErrors) {
    it(`throws on ${scenario}`, () => {
      assert.throws(() => analyze(parse(source)), errorMessagePattern)
    })
  }
  it(`produces the expected graph for the simple sample program`, () => {
    const program = analyze(parse(sample))
    let x = core.variable("x", false)
    let f = core.fun("f", 1)
    let localX = core.variable("x", true)
    assert.deepEqual(
      program,
      core.program([
        core.variableDeclaration(x, core.call(core.standardLibrary.sqrt, [9])),
        core.functionDeclaration(f, [localX], core.binary("*", 3, localX)),
        core.whileStatement(true, [
          core.assignment(x, 3),
          core.printStatement(core.conditional(0, core.call(f, [x]), 2)),
        ]),
      ])
    )
  })
})
