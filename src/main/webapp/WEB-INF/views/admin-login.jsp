<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<script>
	function validateform() {
		var adminId = document.reg_form.adminId.value;
		var adminPassword = document.reg_form.adminPassword.value;
		if (adminId == null || adminId == "") {
			alert("Admin Id is required or can't be blank");
			return false;
		} else if (adminPassword.length < 6) {
			alert("Admin Password is required or can't be blank");
			return false;
		}
	}
</script>
<style>
<%@include file="css/login.css"%>
</style>
</head>
<body>
		<div class="app">
			<div class="bg"></div>
			<form action="/admin/adminlogin" name="reg_form" method="post"
				modelAttribute="adminlogin" onsubmit="return validateform()">
				<header>
					<h1>Admin Login</h1>
				</header>
				<div class="inputs">
					<input type="text" id="adminId" name="adminId"
						placeholder="Admin ID"> <input type="password"
						id="adminPassword" name="adminPassword" placeholder="Password">
				</div>
				<br> <br> <br> <br> <br>
				<button type="submit" value="Login">Login</button>
			</form>
		</div>
</body>
</html>