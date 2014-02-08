assert = require 'assert'
arrayMaker = require('./routes/gpa').arrayMaker
asumArray = require('./routes/gpa').sumArray
calculateGPA = require('./routes/gpa').calculateGPA

describe "testing arrayMaker", ->
  it "should return", ->
    assert.deepEqual(arrayMaker(4,3,2,1,0,5), [4,3,2,1,0,5])

describe "testing CalculateGPA", ->
  it "should return", ->
    assert.deepEqual(calculateGPA([4.0,3.66,2.33,1.0,0.0],[5,4,3,1,2]), 2.842)


