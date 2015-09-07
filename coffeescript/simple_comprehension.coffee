employees = [
  {name: 'alice', salary: 85000}
  {name: 'bob', salary: 77500}
  {name: 'chi', salary: 58200}
  {name: 'dinh', salary: 99259}
  {name: 'ekaterina', salary: 105882}
  {name: 'fahima', salary: 79999}]

assert = require 'assert'
highEarners = (e.name for e in employees when e.salary > 80000)
assert.deepEqual(highEarners, ['alice', 'dinh', 'ekaterina'])