function optionalsExample() {
  type Person = {
    name: string
    birthdate: Date
    supervisor: string | null | undefined
  }

  const person: Person = {
    name: "",
    birthdate: new Date(),
    supervisor: "",
  }
}
