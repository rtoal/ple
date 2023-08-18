class Queue<T> {
  #data: T[] = []
  constructor() {
    this.#data = []
  }
  enqueue(item: T) {
    this.#data.push(item)
  }
  dequeue(): T | undefined {
    return this.#data.shift()
  }
}
