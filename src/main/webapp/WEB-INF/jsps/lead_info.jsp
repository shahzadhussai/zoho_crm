<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>lead info</title>
</head>

	<style>
		body {background-color:pink;}
		h1   {color: green;}
		
				table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}
		
		td, th {
		  border: 1px solid #dddddd;
		  text-align: left;
		  padding: 8px;
		}
		
		tr:nth-child(even) {
		  background-color: #dddddd;
		}
		
	</style>
	
<body>

<div align="center">
	
	<h1>Lead Info</h1>
	<hr color="red" align="center" width="600">
	
		<table>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Lead Source</th>
			<th>Mobile</th>
		</tr>
			
			<tr>
				<td>${lead.id}</td>
				<td>${lead.firstName}</td>
				<td>${lead.lastName}</td>
				<td>${lead.email}</td>
				<td>${lead.leadSource}</td>
				<td>${lead.mobile}</td>
			</tr>
		</table>
	
	<form action="compose" method="post">
		<input type="hidden" name="emailId" value="${lead.email}"/>
		<input type="submit" value="Email"/>	
	</form>	
	<br>
	<form action="convertLead" method="post">
		<input type="hidden" name="id" value="${lead.id}"/>
		<input type="submit" value="convert"/>
	</form>	

</div>

</body>
</html>