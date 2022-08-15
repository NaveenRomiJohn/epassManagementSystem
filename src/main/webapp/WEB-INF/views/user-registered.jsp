<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User registered</title>
<style type="text/css">
<%@include file ="navbar.css" %> 
* {
	text-align: center;
}
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="userloginform">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<h3>User Registration</h3>
	<br>
	<h2>Your details are registered successfully</h2>
	<br>
	<div>
		<a href="home">Home</a>
	</div>
	<div>
		<a href="userloginform">User Login</a>
	</div>
</body>
</html>