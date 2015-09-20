reader = require('readline').createInterface process.stdin, null
{XRegExp} = require 'xregexp'
counts = Object.create null

reader.on 'line', (line) ->
  wordPattern = XRegExp("[\\p{L}']+", 'g')
  for word in (line.toLowerCase().match(wordPattern) or [])
    counts[word] = (counts[word] or 0) + 1

reader.on 'end', ->
  for word in Object.keys(counts).sort()
    console.log "#{word} #{counts[word]}"
