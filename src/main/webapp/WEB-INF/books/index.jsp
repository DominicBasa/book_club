<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Dashboard</title>
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/css/main.css" />
		<!-- change to match your file/naming structure -->
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/js/app.js"></script>
		<!-- change to match your file/naming structure -->
    <!-- BOOTSWATCH CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/slate/bootstrap.min.css" integrity="sha384-8iuq0iaMHpnH2vSyvZMSIqQuUnQA7QM+f6srIdlgBrTSEyd//AWNMyEaSF2yPzNQ" crossorigin="anonymous">
	</head>
	<body>
    <!-- ${books} -->
		<div class="container">
			<h1>Welcome <c:out value="${userName}"></c:out></h1>

      <table class="table">
        <thead>
          <th>Title: </th>
          <th>Author: </th>
          <th>Posted By: </th>
        </thead>
        <tbody>
          <c:forEach var="book" items="${books}">
            <tr>
              <td>
                <a href="/books/${book.id}">
                ${book.title}</a>
              </td>
              <td>${book.author}</td>
              <td>${book.user.userName}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>

      <a class="btn btn-primary" href="/books/new">Create a Book</a>
      <a href="/logout">Logout</a>
      <a href="/books/new">+ Add a Book to my shelf!</a>
	</body>
</html>
