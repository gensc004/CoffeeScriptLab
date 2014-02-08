formString = '<form>
    <select id="1stCG" name="1stCG">
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
    <select id="1stCredits" name="1stCredits">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
    <select id="2ndCG" name="2ndCG">
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
    <select id="2ndCredits" name="2ndCredits">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
    <select id="3rdCG" name="3rdCG">
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
    <select id="3rdCredits" name="3rdCredits">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select><br />
    <select id="4thCG" name="4thCG">
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
    <select id="4thCredits" name="4thCredits">
        <option value="1">1</option>
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
</head>\n
<body>\n'

footerStr = '</body>\n</html>'


calculateClass = (grade, numCredits) ->

calculateGPA = (gpaArray) ->

module.exports.calculateClass = calculateClass
module.exports.calculateGPA = calculateGPA

exports.formResponse = (req, res) ->
  res.render 'gpa'

exports.postResponse = (req, res) ->
  res.send headerStr + formString + '<p>You said ' + req.body.text + '</p>' + footerStr



