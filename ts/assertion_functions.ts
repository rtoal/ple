type Access = "read" | "write" | "append"

function assertRead(access: Access): asserts access is "read" {
  if (access !== "read") {
    throw new Error("Access is not read")
  }
}

function viewAsGuest(access: Access) {
  // Code looks great as the if-and-throw are elsewhere
  assertRead(access)
  // Actual reading would take place here
  // type of variable access is narrowed to "read" here
  // (Hover over both occurrences of access to see the difference)
  access
}
