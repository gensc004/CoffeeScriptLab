assert = require 'assert'

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


describe "testing removeFirstTwoElements", ->
  it "should return ['frog', 'horse']", ->
    assert.deepEqual(removeFirstTwoElements(['cat','dog','frog','horse']), ['frog', 'horse'])


describe "testing removeFirstTwoElements with just 1 element", ->
  it "should return an empty array", ->
    assert.deepEqual(removeFirstTwoElements(['cat']), [])

describe "testing removeFirstAndLastElements", ->
  it "should return ['frog', 'horse']", ->
    assert.deepEqual(removeFirstAndLastElements(['cat','dog','frog','horse']), ['dog','frog'])

describe "testing removeFirstAndLast with just 2 element", ->
  it "should return an empty array", ->
    assert.deepEqual(removeFirstAndLastElements(['cat','dog']), [])

describe "testing removeFirstNElements more than array size", ->
  it "should return []", ->
    assert.deepEqual(removeFirstNElements(['cat','dog','frog','horse'], 5), [])

describe "testing removeFirstNElements", ->
  it "should return ['frog','horse']", ->
    assert.deepEqual(removeFirstNElements(['cat','dog','frog','horse'], 2), ['frog','horse'])

describe "testing removeFirstNElements n less than 0 ", ->
  it "should return []", ->
    assert.deepEqual(removeFirstNElements(['cat','dog','frog','horse'], -1), [])


describe "testing replaceThirdAndFourthElement", ->
  it "should return ['cat','dog','toad','donkey']", ->
    assert.deepEqual(replaceThirdAndFourthElement(['cat','dog','frog','horse'],'toad','donkey'), ['cat','dog','toad','donkey'])

describe "testing replaceThirdAndFourthElement where less than 3 elements", ->
  it "should return ['cat','dog']", ->
    assert.deepEqual(replaceThirdAndFourthElement(['cat','dog'], 'frog', 'horse'), ['cat','dog'])

describe "testing copyArray", ->
  it "should return ['cat','dog','frog','horse']", ->
    assert.deepEqual(copyArray(['cat','dog','frog','horse']), ['cat','dog','frog','horse'])




#functions

#add3 Function
add3 = (x) -> x+3;

#add3 to an entire array
add3Array = (array) -> add3 x for x in array

#removes last letter in string for each string in array except if string is red.
removeLastLetterInArray = (array) ->
  index.substring 0, index.length - 1 for index in array when index isnt 'red'

#creates an array from 30 to 5 where each number decreases by 5 in the array.
definedArray = (x for x in [30..5] by -5)

# sums numbers in array
sumArray = (array) ->
  sum = 0
  sum += number for number in array
  sum


percentOfStudents = (array)->
  temp = for theClass, total of array
    total
  sum = sumArray(temp)
  students = for theClass, total of array
    "#{theClass} has " + total/sum*100 + "% of students"

removeFirstTwoElements = (array) ->
  if array.length <= 2
    []
  else
    array[2..array.length - 1]

removeFirstAndLastElements = (array) ->
  if array.length <= 2
    []
  else
    array[1..array.length - 2]

removeFirstNElements = (array, n) ->
  if array.length <= n or n <= 0
    []
  else
    array.splice(n, -1 + array.length)

replaceThirdAndFourthElement = (array, replace1, replace2) ->
  if array.length <= 2
    array
  else
    array[2..3] = [replace1,replace2]
  array

copyArray = (array) ->
  

