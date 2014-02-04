assert = require 'assert'
add3 = require('./intro').add3
add3Array = require('./intro').add3Array
removeLastLetterInArray = require('./intro').removeLastLetterInArray

describe "testing add3", ->
  it "should return 13", ->
    assert.equal(add3(10), 13)

describe "testing for loop with add3", ->
  it "should return [13,15,17]", ->
    assert.deepEqual(add3Array([10,12,14]),[13,15,17])

describe "testing for loop with string", ->
  it "should return ['blu', 'gree', 're', 'orang']", ->
    assert.deepEqual(removeLastLetterInArray(['blue', 'green', 'red', 'orange']),['blu', 'gree', 're', 'orang'] )