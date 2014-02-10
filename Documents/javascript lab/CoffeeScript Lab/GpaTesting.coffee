assert = require 'assert'
arrayMaker = require('./routes/gpa').arrayMaker
asumArray = require('./routes/gpa').sumArray
calculateGPA = require('./routes/gpa').calculateGPA
calculateNumGrade = require('./routes/gpa').calculateNumGrade

describe "testing arrayMaker", ->
  it "should return [4,3,2,1,0,5]", ->
    assert.deepEqual(arrayMaker(4,3,2,1,0,5), [4,3,2,1,0,5])

describe "testing CalculateGPA", ->
  it "should return 2.84", ->
    assert.deepEqual(calculateGPA(["A","A-","C+","D","F"],[5,4,3,1,2]), 2.84)
  it "should return 4.0", ->
    assert.deepEqual(calculateGPA(["A"],[5]), 4.0)
  it "should return 3.63", ->
    assert.deepEqual(calculateGPA(["A","B"],[5,3]), 3.63)


describe "testing calculateNumberGrade", ->
  it "should return correct number grade", ->
    assert.deepEqual(calculateNumGrade("A"), 4.0)
    assert.deepEqual(calculateNumGrade("A-"), 3.66)
    assert.deepEqual(calculateNumGrade("B+"), 3.33)
    assert.deepEqual(calculateNumGrade("B"), 3.0)
    assert.deepEqual(calculateNumGrade("B-"), 2.66)
    assert.deepEqual(calculateNumGrade("C+"), 2.33)
    assert.deepEqual(calculateNumGrade("C"), 2.0)
    assert.deepEqual(calculateNumGrade("C-"), 1.66)
    assert.deepEqual(calculateNumGrade("D+"), 1.33)
    assert.deepEqual(calculateNumGrade("D"), 1.0)
    assert.deepEqual(calculateNumGrade("D-"), 0.66)
    assert.deepEqual(calculateNumGrade("F"), 0.0)



