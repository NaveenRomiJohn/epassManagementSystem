s<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
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
	<h2>User LogIn</h2>
	<br>
	<br>
	<form action="userlogin">
		<table class="center">
			<tr>
				<td>User Id :</td>
				<td><input type="text" name="userId" /></td>
			</tr>
			<tr>
				<td>User Password :</td>
				<td><input type="password" name="userPassword" /></td>
			</tr>
			<tr>
				<td><input type='submit' value="Login"></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<h2>User Home</h2>
	<div>
		<a href="adduserform">Add New User</a>
	</div>
</body>
</html>