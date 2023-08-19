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
  get size(): number {
    return this.#data.length
  }
}

let queue: Queue<number> = new Queue<number>()
queue.enqueue(1)
let anotherQueue = new Queue<string>()
anotherQueue.enqueue("first")
