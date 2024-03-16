// The parse() function uses Ohm to produce a match object for a given
// source code program, using the grammar in the file bella.ohm.

import * as fs from "node:fs"
import * as ohm from "ohm-js"

const grammar = ohm.grammar(fs.readFileSync("src/bella.ohm"))

// Returns the Ohm match if successful, otherwise throws an error
export default function parse(sourceCode) {
  const match = grammar.match(sourceCode)
  if (!match.succeeded()) throw new Error(match.message)
  return match
}
