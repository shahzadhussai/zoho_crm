<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact portal</title>
</head>
	
	<style>
		body {background-color:grey;}
		h1   {color: red;}
		
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
			<h1>List Of Contacts Record</h1>
			<hr color="red" align="center" width="800">
	<table>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Lead Source</th>
			<th>Mobile</th>
			<th>Billing</th>
		</tr>
		
		<c:forEach items="${contacts}" var="contact">  
			<tr>
				<td>${contact.id}</td>
				<td><a href="getContactById?id=${lead.id}">${contact.firstName}</a></td>
				<td>${contact.lastName}</td>
				<td>${contact.email}</td>
				<td>${contact.leadSource}</td>
				<td>${contact.mobile}</td>
				<td><a href="getContactById?id=${contact.id}">Generate Bill</a></td>
			</tr>
		</c:forEach> 
		
	</table>
		
	</div>

</body>
</html>