split = require 'split'
{XRegExp} = require 'xregexp'

counts = Object.create null

process.stdin.setEncoding 'utf8'

process.stdin.pipe(split()).on 'data', (line) ->
  wordPattern = XRegExp("[\\p{L}']+", 'g')
  for word in (line.toLowerCase().match(wordPattern) or [])
    counts[word] = (counts[word] or 0) + 1

process.stdin.on 'end', ->
  for word in Object.keys(counts).sort()
    console.log "#{word} #{counts[word]}"
