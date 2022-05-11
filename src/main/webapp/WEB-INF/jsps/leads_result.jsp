<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
			<a href="view">Create New Lead</a>
			<h1>All Leads Record</h1>
			<hr color="red" align="center" width="800">
	<table>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Lead Source</th>
			<th>Mobile</th>
		</tr>
		
		<c:forEach items="${leads}" var="lead">  
			<tr>
				<td>${lead.id}</td>
				<td><a href="getLeadById?id=${lead.id}">${lead.firstName}</a></td>
				<td>${lead.lastName}</td>
				<td>${lead.email}</td>
				<td>${lead.leadSource}</td>
				<td>${lead.mobile}</td>
			</tr>
		</c:forEach> 
		
	</table>
		
	</div>

</body>
</html>