import { readFile } from "fs/promises"

readFile("/etc/profile", "utf8")
  .then(data => {
    console.log(data)
    console.log("This is printed AFTER the file contents")
  })
  .catch(error => console.error(`${error}`))
console.log("This is printed BEFORE the file contents")
