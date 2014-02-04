add3 = (x) -> x+3;


add3Array = (array) -> add3 x for x in array

removeLastLetterInArray = (array) ->
  index.substring 0, index.length - 1 for index in array when index isnt 'red'

definedArray = (x for x in [30..5] by -5)

numberOfStudents = math: 20, CSci: 15, Chemistry: 100, English: 1

students = for theClass, total of numberOfStudents
  "#{theClass} has #{total}"


























module.exports.add3 = add3
module.exports.add3Array = add3Array
module.exports.removeLastLetterInArray = removeLastLetterInArray
module.exports.definedArray = definedArray
module.exports.students = students