split = require 'split'

counts = {}

process.stdin.setEncoding 'utf8'

process.stdin.pipe(split()).on 'data', (line) ->
  for word in (line.toLowerCase().match(/[a-z\']+/g) or [])
    counts[word] = (counts[word] or 0) + 1

process.stdin.on 'end', ->
  console.log "#{word} #{counts[word]}" for word in Object.keys(counts).sort()
