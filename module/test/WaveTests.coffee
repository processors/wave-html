fs = require 'fs'
chai = require 'chai'

wave = require __dirname + '/../src/wave'

chai.should()
expect = chai.expect

describe 'Wave', () ->

  it 'Generate sample output', (done) ->
    callback = () ->
      output = fs.readFileSync __dirname + '/../examples/output.html', 'utf-8'
      example = fs.readFileSync __dirname + '/../examples/example.html', 'utf-8'
      expect(line).to.equal(example[index]) for line, index in output
      expect(fs.statSync(__dirname + '/../examples/output.html')["size"])
      .to.equal(fs.statSync(__dirname + '/../examples/example.html')["size"])
      done()
    wave '../examples/input.whtml', '../examples/example.html', callback