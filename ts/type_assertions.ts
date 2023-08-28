let scores = [] as number[]
// We could have also written let scores: number[] = []
scores.push(100)

function dataFromSomeoneElse(): unknown {
  return "Hello friends, I am a string"
}

let shouted = (dataFromSomeoneElse() as string).toUpperCase()
// Note dataFromSomeoneElse().toUpperCase() is an error

function enableGamePlay() {
  // getElementById returns HTMLElement | null
  let playButton = document.getElementById("play") as HTMLButtonElement
  playButton.disabled = false
}

let order = {
  "doro wot": 2,
  shiro: 5,
  fatira: 3,
}

let favorite = "fatira"
const quantity = order[favorite as keyof typeof order]
// Note order[favorite] is an error!
console.log(`I ordered ${quantity} plates of ${favorite}`)

function serve(name: keyof typeof order) {
  console.log(`Serving ${order[name]} plates of ${name}`)
}

serve("doro wot")
const offMenu = "pepperoni"
serve(offMenu as keyof typeof order) // undefined at runtime!
