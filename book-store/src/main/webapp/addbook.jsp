<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>BOOKS STORE</h1>
		<br> <br>
		<form action="savebook" method="post">
			
				BookId : <input type="number" name="id">
			<br>
			<br>
				BookName : <input type="text" name="name">
			<br>
			<br>
				Author : <input type="text" name="author">
			<br>
			<br>
				No-of-pages : <input type="number" name="page">
			<br>
			<br>
			
			Price : <input type="number" name="price">
			<br>
			<br>
			
			<input type="submit" value="SUBMIT">
		</form>
</body>
</html>