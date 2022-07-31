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
.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<h1>Covid-19 ePass</h1>
	<h2>Admin LogIn</h2>
	<br>
	<br>
	<form action="adminlogin" method="post">
		<table class="center">
			<tr>
				<td>Admin Id :</td>
				<td><input type="text" name="admin_id" /></td>
			</tr>
			<tr>
				<td>Admin Password :</td>
				<td><input type="password" name="admin_password" /></td>
			</tr>
			<tr>
				<td><input type='submit' value='Login'></td>
			</tr>
		</table>
	</form>
</body>
</html>