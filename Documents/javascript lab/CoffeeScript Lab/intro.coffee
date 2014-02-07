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




module.exports.add3 = add3
module.exports.add3Array = add3Array
module.exports.removeLastLetterInArray = removeLastLetterInArray
module.exports.definedArray = definedArray
module.exports.percentOfStudents = percentOfStudents
module.exports.sumArray =sumArray
module.exports.removeFirstTwoElements =removeFirstTwoElements()
