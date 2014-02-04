assert = require 'assert'
add3 = require('./intro').add3
add3Array = require('./intro').add3Array
removeLastLetterInArray = require('./intro').removeLastLetterInArray
definedArray = require('./intro').definedArray
students = require('./intro').students
whileLoop = require('./intro').whileLoop

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
  it "should return [math has 20, CSci has 15,Chemistry has 100,English has 1]", ->
    assert.deepEqual(students,["math has 20","CSci has 15","Chemistry has 100","English has 1"])

