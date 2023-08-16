function optionalsAsUnionTypesExample() {
  type Person = {
    id: number
    name: string
    supervisor: string | null | undefined
  }

  const people: Person[] = [
    { id: 1, name: "Alice", supervisor: "Tina" },
    { id: 2, name: "Bob", supervisor: null },
    { id: 3, name: "Carol", supervisor: undefined },
  ]
}

function optionalPropertyExample() {
  type Person = {
    id: number
    name: string
    supervisor?: string
  }

  const people: Person[] = [
    { id: 1, name: "Alice", supervisor: "Tina" },
    { id: 2, name: "Bob" },
  ]
}

function log(message: string, prefix?: string) {
  if (prefix) {
    console.log(`${prefix}: ${message}`)
  } else {
    console.log(message)
  }
}

log("Hello, world!")
log("Hello, world!", "INFO")
