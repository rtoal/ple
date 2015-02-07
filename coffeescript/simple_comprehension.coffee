employees = [
  {name: 'alice', salary: 85000}
  {name: 'bob', salary: 77500}
  {name: 'chi', salary: 58200}
  {name: 'dinh', salary: 105882}
  {name: 'ekaterina', salary: 99259}]

highEarners = (e.name for e in employees when e.salary>80000)
console.log highEarners