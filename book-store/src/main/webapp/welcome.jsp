<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

	h1{
		text-align: center;
		background: -webkit-linear-gradient(rgb(188, 12, 241), rgb(212, 4, 4));
 		-webkit-background-clip: text;
  		-webkit-text-fill-color: transparent;
	}
	.container{
		border: 1px solid;
		width:40%;
		position: absolute;
		top: 50%;
		transform: translate(60%, -50%);
	}
	
	.btn{
		
	}
</style>
</head>
<body>
	<div class="container">
		<h1>WELCOME TO BOOK STORE</h1>
		<br>
		<h2 class="btn"><a href="login.jsp">LOGIN</a></h2>
		<br>
		<br>
		<h2  class="btn"><a href="signup.jsp">SIGNUP</a></h2>

	</div>

</body>
</html>