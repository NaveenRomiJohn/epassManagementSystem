<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User login</title>
<script>
function validateform() {
	var userId = document.reg_form.userId.value;
	var userPassword = document.reg_form.userPassword.value;
	if (userId == null || userId == "") {
		alert("User Id is required or can't be blank");
		return false;
	} else if (userPassword == null || userPassword == "") {
		alert("User Password is required or can't be blank");
		return false;
	}
}
</script>
<style>
<%@include file ="css/login.css"%>
</style>
</head>
<body>
	<div class="app">
		<div class="bg"></div>
		<form action="userlogin" name="reg_form" method="post"
			modelAttribute="userlogin" onsubmit="return validateform()">
			<header>
				<h1>User Login</h1>
			</header>
			<div class="inputs">
				<input type="text" id="userId" name="userId"
					placeholder="User ID"> <input type="password"
					id="userPassword" name="userPassword" placeholder="Password">
			</div>
			<br> <br> <br> <br>
			<button type="submit" value="Login">Login</button>
		</form>

		<footer>
			<p>
				Don't have an account? <a href="adduserform">Sign Up</a>
			</p>
		</footer>
	</div>
</body>
</html>