formString = '<form method="post" action="/gpa">
    <select id="CG1" name="CG1">
        <option value="4.0">A</option>
        <option value="3.66">A-</option>
        <option value="3.33">B+</option>
        <option value="3.0">B</option>
        <option value="2.66">B-</option>
        <option value="2.33">C+</option>
        <option value="2.0">C</option>
        <option value="1.66">C-</option>
        <option value="1.33">D+</option>
        <option value="1.0">D</option>
        <option value="0.66">D-</option>
        <option value="0.0">D-</option>
    </select>
    <select id="Credits1" name="Credits1">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
    <select id="CG2" name="CG2">
        <option value="4.0">A</option>
        <option value="3.66">A-</option>
        <option value="3.33">B+</option>
        <option value="3.0">B</option>
        <option value="2.66">B-</option>
        <option value="2.33">C+</option>
        <option value="2.0">C</option>
        <option value="1.66">C-</option>
        <option value="1.33">D+</option>
        <option value="1.0">D</option>
        <option value="0.66">D-</option>
        <option value="0.0">D-</option>
    </select>
    <select id="Credits2" name="Credits2">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
    <select id="CG3" name="CG3">
        <option value="4.0">A</option>
        <option value="3.66">A-</option>
        <option value="3.33">B+</option>
        <option value="3.0">B</option>
        <option value="2.66">B-</option>
        <option value="2.33">C+</option>
        <option value="2.0">C</option>
        <option value="1.66">C-</option>
        <option value="1.33">D+</option>
        <option value="1.0">D</option>
        <option value="0.66">D-</option>
        <option value="0.0">D-</option>
    </select>
    <select id="Credits3" name="Credits3">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
    <select id="CG4" name="CG4">
        <option value="4.0">A</option>
        <option value="3.66">A-</option>
        <option value="3.33">B+</option>
        <option value="3.0">B</option>
        <option value="2.66">B-</option>req.body.GC1
        <option value="2.33">C+</option>
        <option value="2.0">C</option>
        <option value="1.66">C-</option>
        <option value="1.33">D+</option>
        <option value="1.0">D</option>
        <option value="0.66">D-</option>
        <option value="0.0">D-</option>
    </select>
    <select id="Credits4" name="Credits4">
        <option value="3">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
<input type="button" id="CalcGPA" value="Calculate GPA" name="Calculate GPA">
</form>'

headerStr = '<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>GPA Calculator</title>\n
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />\n
</head>\n
<body>\n
<h1>GPA Calculator</h1>\n'

footerStr = '</body>\n</html>'


arrayMaker = (inputs...) ->
  inputs

sumArray = (array) ->
  sum = 0
  sum += number for number in array
  sum

calculateGPA = (gradeArray,creditArray) ->
 sum = sumArray(creditArray)
 gradeCredit = 0
 gradeCredit += parseFloat(gradeArray[i])*creditArray[i] for i in [0..creditArray.length-1]
 gradeCredit/sum


module.exports.arrayMaker= arrayMaker
module.exports.sumArray = sumArray
module.exports.calculateGPA = calculateGPA

exports.gpaResponse = (req, res) ->
  res.render 'gpa'

exports.gpaPostResponse = (req, res) ->
  res.send headerStr + formString + '<p>Your GPA is ' + req.body.Credits1 + calculateGPA(arrayMaker(req.body.GC1,req.body.GC2),arrayMaker(req.body.Credits1,req.body.Credits2)) + '</p>' + footerStr