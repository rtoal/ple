import * as fs from "node:fs/promises"
import process from "node:process"
import parse from "./parser.js"
import analyze from "./analyzer.js"
import optimize from "./optimizer.js"
import generate from "./generator.js"

function compile(source) {
  return generate(optimize(analyze(parse(source))))
}

try {
  if (process.argv.length !== 3) {
    throw new Error("Must have exactly one argument, a file name")
  }
  const buffer = await fs.readFile(process.argv[2])
  console.log(compile(buffer.toString()))
} catch (e) {
  console.error(`\u001b[31m${e}\u001b[39m`)
  process.exitCode = 1
}
