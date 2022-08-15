<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin form</title>
<style>
  <%@include file="navbar.css"%>
  <%@include file="form.css"%>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a class="active" href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
		<h3>Admin Details Updation</h3>
		<form:form action="updateadmin" method="post" modelAttribute="updateadmin">
			<table class="center">
				<tr>
					<td><form:label path="adminId">Admin Id: </form:label></td>
					<td><form:input path="adminId" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="adminName">Name: </form:label></td>
					<td><form:input path="adminName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="adminEmail">Email: </form:label></td>
					<td><form:input type="email" path="adminEmail"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email ex: epass@gmail.com" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="adminPassword">Password: </form:label></td>
					<td><form:password path="adminPassword"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8}$"
							required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="dateOfJoining">Date of Joining: </form:label></td>
					<td><form:input type="date" path="dateOfJoining" /></td>
				</tr>
				<tr>
					<td><form:label path="adminDesignation">Designation: </form:label></td>
					<td><form:input path="adminDesignation"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Update</button></td>
				</tr>
			</table>
		</form:form>
</body>
</html>