import { copyFile, mkdir, readFile } from "fs/promises"

try {
  await mkdir("backups")
  await copyFile("/etc/profile", "backups/profile")
  const data = await readFile("backups/profile", "utf8")
  console.log(data)
} catch (error) {
  console.error(`${error}`)
}
