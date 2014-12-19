should = require 'should'
exec = require('child_process').exec

describe 'wordcount', ->
  context 'given an empty file', ->
    it 'does not output anything', (done) ->
      exec 'echo "" | coffee wordcount.coffee', (err, stdout, stderr) ->
        lines = stdout.split /\r?\n/
        line.should.match /^$/ for line in lines
        done()

  context 'given a simple test case', ->
    it 'outputs the proper word counts', (done) ->
      exec 'echo "QQQ A a a aBC HA:qQq" | coffee wordcount.coffee', (err, stdout, stderr) ->
        lines = stdout.split /\r?\n/
        lines[0].should.match /^a 3\s*/
        lines[1].should.match /^abc 1\s*/
        lines[2].should.match /^ha 1\s*/
        lines[3].should.match /^qqq 2\s*/
        done()
