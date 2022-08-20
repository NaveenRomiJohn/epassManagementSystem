<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin form</title>
<style>
  <%@include file="css/navbar.css"%>
  <%@include file="css/form.css"%>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="/home/index">Home</a></li>
		<li><a class="active" href="/admin/adminloggedin?adminId=${adminId}">Admin</a></li>
		<li class="right"><a href="">Admin : ${adminId}</a></li>
	</ul>
		<h3>Admin Details Updation</h3>
		<form:form action="/admin/updateadmin" method="post" modelAttribute="updateadmin">
			<table class="center"><caption></caption>
				<tr>
					<td><form:hidden path="adminId" value="${adminId}"/></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="adminName">Name: </form:label></th>
					<td><form:input path="adminName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" required="true" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="adminEmail">Email: </form:label></th>
					<td><form:input type="email" path="adminEmail"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email ex: epass@gmail.com" required="true" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="adminPassword">Password: </form:label></th>
					<td><form:password path="adminPassword"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="dateOfJoining">Date of Joining: </form:label></th>
					<td><form:input type="date" path="dateOfJoining" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="adminDesignation">Designation: </form:label></th>
					<td><form:input path="adminDesignation"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" required="true" /></td>
				</tr>
				<table class="center"><caption></caption>
				<tr><th></th>
					<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Update</button></td>
				</tr>
				</table>
			</table>
		</form:form>
</body>
</html>