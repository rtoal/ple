import { readFile } from "fs/promises"

const promise = readFile("/etc/profile", "utf8")
promise.then(
  data => {
    console.log(data)
    console.log("This is printed only AFTER the file contents")
  },
  error => console.error(`${error}`)
)
console.log("This is always printed BEFORE the file contents")
