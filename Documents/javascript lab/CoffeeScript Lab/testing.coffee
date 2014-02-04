assert = require 'assert'
add3 = require('./intro').add3

describe "testing add3", ->
  it "should return 13", ->
    assert.equal(add3(10), 13)