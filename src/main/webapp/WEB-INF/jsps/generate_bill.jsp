<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>lead portal</title>
</head>

	<style>
		body {background-color:grey;}
		h1   {color: green;}
	</style>

<body>
	
	<div align="center">
	
		<h1>Lead | Create</h1>	
		<hr color="red" align="center" width="600">
		
		<form action="generate" method="post">
		
			First Name<input type="text" name="firstName" value="${contact.firstName}"/><br><br>
			Last Name<input type="text" name="lastName" value="${contact.lastName}"/><br><br>
			Email<input type="email" name="email" value="${contact.email}"/><br><br>
			Mobile<input type="number" name="mobile" value="${contact.mobile}"/><br><br>
			Product Name <input type="text" name="productName"/>
			Amount Paid <input type="text" name="amount"/>
   		    <input type="submit" value="generatee bill"/>
		
		</form>		
	
	</div>

</body>
</html>