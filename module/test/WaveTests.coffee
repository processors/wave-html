###
  Mocha tests for wave compiler.
###

# Require libs
fs = require('fs')
chai = require('chai')
wave = require(__dirname + '/../src/wave')

# Setup chai tests
chai.should()
expect = chai.expect

describe 'Wave', () ->

  it 'Generate sample output', (done) ->
    wave __dirname + '/../examples/input.whtml', __dirname + '../examples/example.html', () ->
      output = fs.readFileSync __dirname + '/../examples/output.html', 'utf-8'
      example = fs.readFileSync __dirname + '/../examples/example.html', 'utf-8'
      expect(line).to.equal(example[index]) for line, index in output
      expect(fs.statSync(__dirname + '/../examples/output.html')["size"])
      .to.equal(fs.statSync(__dirname + '/../examples/example.html')["size"])
      done()
