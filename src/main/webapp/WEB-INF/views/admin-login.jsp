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
<script >
	function validateform() {
		var adminId = document.reg_form.adminId.value;
		var adminPassword = document.reg_form.adminPassword.value;
		if (adminId == null || adminId == "") {
			alert("Name can't be blank");
			return false;
		} else if (adminPassword.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		}
	}
</script>
<body>
	<h1>Covid-19 ePass</h1>
	<h2>Admin LogIn</h2>
	<br>
	<br>
	<form name="reg_form" action="adminlogin" method="post" 
		onsubmit="return validateform()">
		<table class="center">
			<tr>
				<td>Admin Id :</td>
				<td><input type="text" name="adminId" /></td>
			</tr>
			<tr>
				<td>Admin Password :</td>
				<td><input type="password" name="adminPassword" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>