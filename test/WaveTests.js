(function() {
  var chai, expect, fs, wave;

  fs = require('fs');

  chai = require('chai');

  wave = require(__dirname + '/../lib/wave');

  chai.should();

  expect = chai.expect;

  describe('Wave', function() {
    return it('Generate sample output', function(done) {
      var callback;
      callback = function() {
        var example, i, index, len, line, output;
        output = fs.readFileSync(__dirname + '/../examples/output.html', 'utf-8');
        example = fs.readFileSync(__dirname + '/../examples/example.html', 'utf-8');
        for (index = i = 0, len = output.length; i < len; index = ++i) {
          line = output[index];
          expect(line).to.equal(example[index]);
        }
        return done();
      };
      return wave('../examples/input.html', '../examples/example.html', callback);
    });
  });

}).call(this);
