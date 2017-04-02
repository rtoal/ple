reader = require('readline').createInterface process.stdin, null
XRegExp = require 'xregexp'
counts = new Map()

reader.on 'line', (line) ->
  wordPattern = XRegExp("[\\p{L}']+", 'g')
  for word in (line.toLowerCase().match(wordPattern) or [])
    counts.set word, (counts.get(word) or 0) + 1

reader.on 'close', ->
  for word in Array.from(counts.keys()).sort()
    console.log "#{word} #{counts.get word}"
