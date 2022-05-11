<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>compose</title>
</head>

	<style>
		body {background-color:pink;}
		h1   {color: red;}
	</style>
	
<body>

<div align="center">
	<h1>Compose Email</h1>
	<hr color="red" align="center" width="600">

	<form action="sendEmail" method="post">
		to <input type="text" name="to" value="${email}"/><br/>
		subject <input type="text" name="subject"/><br/>
		<textarea name="body" rows="5" cols="50"></textarea><br/>
		<input type="submit" value="Send Email"/>
	
	</form>
</div>

</body>
</html>