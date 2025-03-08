<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Book</title>
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
    color: navy;
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
    background-color: blue;
    color: white;
    height: 35px;
    width: 120px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
}

#b:hover {
    background-color: green;
    color: black;
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
}
form {
	padding: 30px;
}
  
  </style>
</head>
<body>
  <h1>Edit Book</h1>
  <form action="${pageContext.request.contextPath}/books/update" method="post">
    <input type="hidden" name="id" value="${book.id}" />
    <label>Title:</label>
    <input type="text" name="title" value="${book.title}" required/><br/><br/>
    <label>Author:</label>
    <input type="text" name="author" value="${book.author}" required/><br/><br/>
    <label>ISBN:</label>
    <input type="text" name="isbn" value="${book.isbn}" required/><br/><br/>
    <input id="b" type="submit" value="Update"/>
  </form>
  <br/>
  <a href="${pageContext.request.contextPath}/books"><button class="b1">Back to List</button></a>
</body>
</html>
