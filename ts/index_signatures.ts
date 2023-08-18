type Score = 1 | 2 | 3 | 4 | 5

interface Rating {
  plot: Score // a plot score is required
  originality: Score // an originality score is required
  [key: string]: Score // you can create other scores of your choice
}

let r: Rating = {
  plot: 5,
  originality: 4,
  idea: 3,
}

const metric = "clarity"
r[metric] = 3 // Computed property access

for (const key in r) {
  // Iteration through property name
  console.log(`${key} score is ${r[key]}`)
}
