generatePermutations = (a, n) ->
  if n is 0
    console.log a.join ''
  else
    for i in [0...n]
      generatePermutations a, n-1
      j = if n % 2 is 0 then 0 else i
      [a[j], a[n]] = [a[n], a[j]]
    generatePermutations a, n-1

if process.argv.length isnt 3
  console.error 'Exactly one argument is required'
  process.exit 1
word = process.argv[2]
generatePermutations word.split(''), word.length-1
