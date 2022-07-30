<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User registered</title>
<style>
* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h3>User Registration</h3>
	<br>
	<p>Your details are registered successfully</p>
	${first_name}
	<br>
	<div>
		<a
			href="/eclipse-june-workspace/epassManagementSystem/src/main/webapp/WEB-INF/views/home.jsp">Home</a>
	</div>
	<div>
		<a
			href="/eclipse-june-workspace/epassManagementSystem/src/main/webapp/WEB-INF/views/user-login.jsp">User
			LogIn</a>
	</div>
</body>
</html>