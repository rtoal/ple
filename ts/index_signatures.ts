type Score = 1 | 2 | 3 | 4 | 5

interface Rating {
  plot: Score // a plot score is required
  originality: Score // an originality score is required
  [key: string]: Score // you can create other scores of your choice
}

let rating: Rating = {
  plot: 5,
  originality: 4,
  idea: 3,
}

const metric = "clarity"
rating[metric] = 3 // Computed property access

for (const key in rating) {
  // Iteration through property names
  console.log(`${key} score is ${rating[key]}`)
}
