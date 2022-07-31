<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Admin</title>
<style>
* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Delete Admin Details</h3>
			<form action="deleteadmin" >
				<div>
					AdminId : <input type="text" name="admin_id" />
				</div>
				<br>
				<input type="submit" value="Delete" />
			</form>
</body>
</html>