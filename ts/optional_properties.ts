function optionalPropertyExample() {
  type Person = {
    name: string
    birthdate: Date
    supervisor?: string
  }

  const person: Person = {
    name: "",
    birthdate: new Date(),
    supervisor: "",
  }
}
