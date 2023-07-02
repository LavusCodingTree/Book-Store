<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Book Table</h1>
	<table>

		<tr>
			<th>ID</th>
			<th>Book Name</th>
			<th>Author</th>
			<th>No of Pages</th>
			<th>Price</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>

		<% ArrayList<Book> books= (ArrayList)request.getAttribute("data");%>
		
		<%for(Book b : books) { %>
		
		<tr>
			<td><%=b.getId()%></td>
			<td><%=b.getBook_name()%></td>
			<td><%=b.getauthor_name()%></td>
			<td><%=b.getno_of_pages()%></td>
			<td><%=b.getprice()%></td>
			<td><a href="delete?id=<%= b.getId() %>" >delete</a></td>
			<td><a href="update?id=<%= b.getId() %>" >edit</a></td>
		</tr>
		
		<%}%>

	</table>

</body>
</html>