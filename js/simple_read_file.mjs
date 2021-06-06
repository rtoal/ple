import { readFile } from "fs"

readFile("/etc/profile", "utf8", (error, data) => {
  if (error) throw error
  console.log(data)
  console.log("This is printed AFTER the file contents")
})
console.log("This is printed BEFORE the file contents")
