class Queue {
  #data
  #validateNotEmpty() {
    if (this.size <= 0) throw new Error("Queue empty")
  }
  constructor() {
    this.#data = []
  }
  add(item) {
    this.#data.push(item)
  }
  remove() {
    this.#validateNotEmpty()
    return this.#data.shift()
  }
  peek() {
    this.#validateNotEmpty()
    return this.#data[0]
  }
  get size() {
    return this.#data.length
  }
}
