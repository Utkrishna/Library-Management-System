<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Library Management System - Book List</title>
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

  .b1:hover {
    background-color: green;
    color:black;
  }

  table {
    width: 80%;
    margin: auto;
    border-collapse: collapse;
    background: white;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
  }

  th, td {
    border: 1px solid green;
    padding: 10px;
    text-align: center;
  }

  th {
    background-color: lightgreen;
    color: black;
    font-weight: bold;
  }

  td a {
    text-decoration: none;
    color: blue;
    margin: 0 10px;
  }

  td a:hover {
    color: darkblue;
  }
  button {
    background-color: lime;
    color: black;
    height: 35px;
    width: 60px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
  }

  </style>
</head>
<body>
  <h1>Book List</h1>
  <p>Total Books: ${totalBooks}</p>
  <a href="${pageContext.request.contextPath}/books/add"><button class="b1">Add New Book</button></a>
  <br/><br/>
  <table border="1" cellpadding="5" cellspacing="0">
    <tr>
      <th>ID</th>
      <th>Title</th>
      <th>Author</th>
      <th>ISBN</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="book" items="${books}">
      <tr>
        <td>${book.id}</td>
        <td>${book.title}</td>
        <td>${book.author}</td>
        <td>${book.isbn}</td>
        <td>
          <a href="${pageContext.request.contextPath}/books/edit/${book.id}"><button>Edit</button></a>
          <a href="${pageContext.request.contextPath}/books/delete/${book.id}" onclick="return confirm('Are you sure?');"><button>Delete</button></a>
        </td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>
