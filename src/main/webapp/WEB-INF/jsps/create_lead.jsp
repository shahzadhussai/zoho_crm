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
		body {background-color:DodgerBlue;}
		h1   {color: green;}
	</style>

<body>
	
	<div align="center">
	
		<h1>Lead | Create</h1>	
		<hr color="red" align="center" width="600">
		
		<form action="saveLead" method="post">
		
			First Name<input type="text" name="firstName"/><br><br>
			Last Name<input type="text" name="lastName"/><br><br>
			Email<input type="email" name="email"/><br><br>
			Lead Source:
						<select name="leadSource">
						  <option value="tv commercial">TV Commercial</option>
						  <option value="radio">radio</option>
						  <option value="news paper">news paper</option>
						  <option value="online">online</option>
						</select><br><br>
			Mobile<input type="number" name="mobile"/><br><br>
				  <input type="submit" value="save"/>
		
		</form>		
	
	</div>

</body>
</html>