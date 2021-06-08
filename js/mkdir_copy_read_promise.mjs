import { copyFile, mkdir, readFile } from "fs/promises"

mkdir("backups")
  .then(() => copyFile("/etc/profile", "backups/profile"))
  .then(() => readFile("backups/profile", "utf8"))
  .then(data => console.log(data))
  .catch(error => console.error(`${error}`))
