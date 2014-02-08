assert = require 'assert'
calculateClass = require('./routes/gpa').calculateClass
calculateGPA = require('./routes/gpa').calculateGPA


describe "testing CalculateClass", ->
  it "should return 20", ->
    assert.deepEqual(calculateClass(4.0,5),20)

describe "testing CalculateClass", ->
  it "should return 14.64", ->
    assert.deepEqual(calculateClass(3.66,4),14.64)

    describe "testing CalculateClass", ->
  it "should return 6.99", ->
    assert.deepEqual(calculateClass(2.33,3),6.99)

  describe "testing CalculateClass", ->
  it "should return 1", ->
    assert.deepEqual(calculateClass(1.0,1),1)

  describe "testing CalculateClass", ->
  it "should return 0", ->
    assert.deepEqual(calculateClass(0.0,2),0)


