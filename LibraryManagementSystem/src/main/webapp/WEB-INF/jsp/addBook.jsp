<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add New Book</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <style>
  body {
    background-color: #f0f0f0;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
    text-align: center;
   
}
h1 {
    font-size: 40px;
    color: red;
    margin-bottom: 20px;
}

.b1 {
    background-color: blue;
    color: white;
    height: 35px;
    width: 120px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
}
#b {
    background-color: green;
    color: white;
    height: 35px;
    width: 120px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
}
label {
	font-size: 20px;
	color: black;
	padding-left: 30px;
}
input {
	height: 25px;
	width: 300px;
	padding:5px;
	background-color: #f0f0f0;
}
form {
	padding: 30px;
}
</style>
</head>
<body>
  <h1>Add New Book</h1>
  <form action="${pageContext.request.contextPath}/books/save" method="post">
    <label>Title:</label>
    <input type="text" name="title" required/><br/><br/>
    <label>Author:</label>
    <input type="text" name="author" required/><br/><br/>
    <label>ISBN:</label>
    <input type="text" name="isbn" required/><br/><br/>
    <input id="b" type="submit" value="Save"/>
  </form>
  <br/>
  <a href="${pageContext.request.contextPath}/books"><button class="b1">Back to List</button></a>
</body>
</html>
