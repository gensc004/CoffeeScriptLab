assert = require 'assert'
add3 = require('./intro').add3
add3Array = require('./intro').add3Array
removeLastLetterInArray = require('./intro').removeLastLetterInArray
definedArray = require('./intro').definedArray
percentOfStudents = require('./intro').percentOfStudents
whileLoop = require('./intro').whileLoop
sumArray = require('./intro').sumArray

describe "testing add3", ->
  it "should return 13", ->
    assert.equal(add3(10), 13)

describe "testing for loop with add3", ->
  it "should return [13,15,17]", ->
    assert.deepEqual(add3Array([10,12,14]),[13,15,17])

describe "testing for loop with string", ->
  it "should return ['blu', 'gree', 'orang']", ->
    assert.deepEqual(removeLastLetterInArray(['blue', 'green', 'red', 'orange']),['blu', 'gree',  'orang'] )


describe "testing creating an Array", ->
  it "should return [7..5]", ->
    assert.deepEqual(definedArray,[30, 25,20, 15,10,5])

describe "testing numberOfStudents", ->
  it "should return ['math has 20% of students','csci has 60% of students', 'chemistry has 60% of students','english has 5% of students']", ->
    assert.deepEqual(percentOfStudents(math: 40, csci:30, chemistry: 120, english: 10),["math has 20% of students","csci has 15% of students","chemistry has 60% of students","english has 5% of students"])

describe "testing sumArray", ->
  it "should return 105", ->
    assert.deepEqual(sumArray([30, 25,20, 15,10,5]),105)