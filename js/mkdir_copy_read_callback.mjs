import { copyFile, mkdir, readFile } from "fs"

mkdir("backups", error => {
  if (error) console.error(`${error}`)
  else
    copyFile("/etc/profile", "backups/profile", error => {
      if (error) console.error(`${error}`)
      else
        readFile("backups/profile", "utf8", (error, data) => {
          if (error) console.error(`${error}`)
          else console.log(data)
        })
    })
})
