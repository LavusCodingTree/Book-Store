<%@page import="com.js.dto.Book"%>
<%@page import="com.js.dao.BookCRUD"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

	*{
		font-size: 30px;
	}
	table{
		width:50%;
	 translate: 50% 50%;
	}
	
	
</style>
</head>
<body>

<%ArrayList<Book> book = (ArrayList)request.getAttribute("data");%>
	
	<table border="3px" cellspacing="0px" cellpadding="20px">
		<tr background="gray">
			<th>Id</th>
			<th>BookName</th>
			<th>Author</th>
			<th>No_Of_Pages</th>
			<th>Price</th>
			<th>Delete</th>
		</tr>
		 
		<%for(Book b : book){ %>
			<tr>
				<td><%=b.getId()%></td>
				<td><%= b.getBook_name() %></td>
				<td><%=b.getauthor_name() %></td>
				<td><%=b.getno_of_pages() %></td>
				<td><%=b.getprice() %></td>
				<td><a href="delete?id=<%=b.getId()%>">delete</a></td>
			</tr>
		<%} %>
	</table>
</body>
</html>