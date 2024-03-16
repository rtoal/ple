import assert from "node:assert/strict"
import parse from "../src/parser.js"
import analyze from "../src/analyzer.js"
import optimize from "../src/optimizer.js"
import generate from "../src/generator.js"

function dedent(s) {
  return `${s}`.replace(/(?<=\n)\s+/g, "").trim()
}

const fixtures = [
  {
    name: "small",
    source: `
      let x = 3 * 7;
      let y = true;
      y = 5 ** (-x) / 100 > (- x) || false;
      print((y && y) || (false || (x*2) != 5));
    `,
    expected: dedent`
      let x_1 = 21;
      let y_2 = 1;
      y_2 = ((((5 ** -(x_1)) / 100) > -(x_1)) || 0);
      console.log(((y_2 && y_2) || (0 || ((x_1 * 2) != 5))));
    `,
  },
  {
    name: "while",
    source: `
      let x = 0;
      while x < 5 {
        let y = 0;
        while y < 5 {
          print x * y;
          y = y + 1;
        }
        x = x + 1;
      }
    `,
    expected: dedent`
      let x_1 = 0;
      while ((x_1 < 5)) {
      let y_2 = 0;
      while ((y_2 < 5)) {
      console.log((x_1 * y_2));
      y_2 = (y_2 + 1);
      }
      x_1 = (x_1 + 1);
      }
    `,
  },
  {
    name: "functions",
    source: `
      function gcd(x, y) = y == 0 ? x : gcd(y, x % y);
      print gcd(22, 33);
    `,
    expected: dedent`
      function gcd_3(x_1, y_2) {
        return (((y_2 == 0)) ? (x_1) : (gcd_3(y_2,(x_1 % y_2))));
      }
      console.log(gcd_3(22,33));
    `,
  },
]

describe("The code generator", () => {
  for (const fixture of fixtures) {
    it(`produces expected js output for the ${fixture.name} program`, () => {
      const actual = generate(optimize(analyze(parse(fixture.source))))
      assert.deepEqual(actual, fixture.expected)
    })
  }
})
