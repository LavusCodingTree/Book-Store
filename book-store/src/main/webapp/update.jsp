<%@page import="com.js.dto.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Update Your Data</h1>
<% Book b = (Book)request.getAttribute("book");%>
<form action="edit" method="get">
			
				Book : <input type="number" name="id" value="<%= b.getId() %>" readonly="readonly"> 
			<br>
			<br>
				BookName : <input type="text" name="name" value="<%= b.getBook_name() %>">
			<br>
			<br>
				Author : <input type="text" name="author" value="<%= b.getauthor_name() %>">
			<br>
			<br>
				No-of-pages : <input type="number" name="page" value="<%= b.getno_of_pages() %>">
			<br>
			<br>
			
			Price : <input type="number" name="price" value="<%= b.getprice() %>">
			<br>
			<br>
			
			<input type="submit" value="update">
		</form>


</body>
</html>