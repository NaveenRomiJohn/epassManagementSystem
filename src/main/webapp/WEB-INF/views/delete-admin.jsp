<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Admin</title>
<style>
 <%@include file="css/navbar.css"%>
  <%@include file="css/form.css"%>
</style>
</head>
<script>
	function validateform() {
		var adminId = document.reg_form.adminId.value;
		if(adminId == null || adminId == "") {
			alert("Admin Id is required or can't be blank");
			return false;
		}
		</script>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a class="active" href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<h3>Delete Admin Details</h3>
	<form action="deleteadmin" name="reg_form" method="get" onsubmit="return validateform()">
		<table class="center"><caption></caption>
		<tr>
			<th>AdminId</th>
		</tr>
		<tr>
			<td> <input type="text" name="adminId" id="adminId"/></td>
		</tr>
		<tr>
			<td><button type="submit" class="signupbtn">Delete</button></td>
		</tr>
		</table>
	</form>
</body>
</html>