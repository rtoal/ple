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

// Two ways to declare queue variables
let queue: Queue<number> = new Queue()
queue.enqueue(1)
let anotherQueue = new Queue<string>()
anotherQueue.enqueue("first")
