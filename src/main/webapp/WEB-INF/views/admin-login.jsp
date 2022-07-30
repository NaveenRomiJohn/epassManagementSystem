<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>Covid-19 ePass</h1>
	<h2>Admin LogIn</h2>
	<br>
	<br>
	<form action="epassrequests" method="post">
		<table>
			<tr>
				<td>Admin Id :</td>
				<td><input type="text" name="adminid" /></td>
			</tr>
			<tr>
				<td>Admin Password :</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td><input type='submit' name='Login' value='Login'></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<h2>Admin Home</h2>
	<div>
		<a href="http://localhost:8080/addadminform">Add New Admin</a>
	</div>
</body>
</html>