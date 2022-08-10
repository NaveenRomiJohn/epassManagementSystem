<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
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
<body>
	<h1>Covid-19 ePass</h1>
	<br>
	<br>
	
	<form:form action="adminlogin" name="reg_form" method="post"
		modelAttribute="adminlogin" onsubmit="return validateform()">
		<table class="center">
			<tr>
				<td>Admin Id :</td>
				<td><form:input path="adminId" name="adminId" /></td>
			</tr>
			<tr>
				<td>Admin Password :</td>
				<td><form:password path="adminPassword" name="adminPassword" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>