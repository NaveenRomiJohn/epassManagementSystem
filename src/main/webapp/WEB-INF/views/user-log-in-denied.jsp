<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
* {
	text-align: center;
}

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
}

.center {
	margin-left: auto;
	margin-right: auto;
}

</style>
</head>
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
<body>
	<h1>E-Pass Management System</h1>
	<br>
	<h2>User LogIn</h2>
	<br>
	<br>
	<form:form action="userlogin" name="reg_form" method="post"
		modelAttribute="userlogin" onsubmit="return validateform()">
		<p style="color: red" style="font-size:30px" >*Login access denied</p>
		<table class="center">
			<tr>
				<td>User Id :</td>
				<td><form:input path="userId" name="userId" /></td>
			</tr>
			<tr>
				<td>User Password :</td>
				<td><form:password path="userPassword" name="userPassword" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form:form>
	<br>
	<br>
	<h2>User Register</h2>
	<div>
		<a href="adduserform">Add New User</a>
	</div>
</body>
</html>