<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin form</title>
<style>
 <%@include file="navbar.css"%>
 <%@include file="form.css"%>
</style>
<script>
function validateadmin() {

	  let user = document.getElementById('user');
	  let listOptions = document.querySelectorAll("#list option");

	  if (user.value.length <= 20 && user.value.length >= 3) {} else {
	    alert("Username has to be between 3-20 characters.")
	  }


	  for (let i = 0; i < listOptions.length; i++) {
	    if (listOptions[i].value === user.value) {
	      alert('The name already exist')
	    }
	  }
	  return false;
	}
</script>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a class="active" href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
		<h3>Admin Registration form</h3>
		<form:form action="addadmin" method="post" modelAttribute="addAdmin"
			onsubmit="return validateadmin()">
			<table class="center"><caption></caption>
				<tr>
					<th scope="col"><form:label path="adminId">Admin Id: </form:label></th>
					<td><form:input path="adminId" required="true" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="adminName">Name: </form:label></th>
					<td><form:input path="adminName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z ]+$" required="true" /></td>
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
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8}$"
							title="Password must be minimum 8 characters with alphabets,one special and one number"
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="dateOfJoining">Date of Joining: </form:label></th>
					<td><form:input type="date" path="dateOfJoining"
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col"><form:label path="adminDesignation">Designation: </form:label></th>
					<td><form:input path="adminDesignation"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
				</tr>
			</table>
		</form:form>
</body>
</html>