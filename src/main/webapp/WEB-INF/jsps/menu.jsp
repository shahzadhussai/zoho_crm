<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 20px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
</style>
</head>

<body>
	<ul>
	  <li><a href="#crm">CRM</a></li>
	  <li><a href="#home">Home</a></li>
	  <li><a class="active" href="listallleads">Leads</a></li>
	  <li><a href="listallcontacts">Contacts</a></li>
	  <li><a href="#account">Accounts</a></li>
	  <li><a href="#deals">Deals</a></li>
	  <li><a href="#reposrt">Reports</a></li>
	  <li style="float:right"><a href="#about">About</a></li>
	</ul>
	
</body>

</html>