swap = (a, i, j) ->
  [a[i], a[j]] = [a[j], a[i]]

generatePermutations = (a, n) ->
  if n is 0
    console.log a.join ''
  else
    for i in [0..n]
      generatePermutations a, n-1
      swap a, (if n % 2 is 0 then i else 0), n

if process.argv.length isnt 3
  console.error 'Exactly one argument is required'
  process.exit 1
word = process.argv[2]
generatePermutations word.split(''), word.length-1
