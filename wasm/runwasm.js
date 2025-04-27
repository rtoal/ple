import * as fs from "fs";

const buffer = fs.readFileSync(process.argv[2]);
const env = {
  print: (x) => console.log(x),
  pow: (x, y) => x ** y,
};
const wasmModule = await WebAssembly.instantiate(buffer, { env });
wasmModule.instance.exports.main();
