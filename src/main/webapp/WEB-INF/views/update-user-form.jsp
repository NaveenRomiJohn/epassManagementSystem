<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
<%@include file="css/form.css" %>
<%@include file="css/navbar.css" %>
</style>
</head>
<script>
	function validateform() {
		var userPassword = document.reg_form.userPassword.value;
		var secondpassword = document.reg_form.secondpassword.value;
	
		if (userPassword == secondpassword) {
			return true;
		} else {
			alert("User and Confirm password must be same!");
			return false;
		}
	}
</script>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="userloggedin">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
<div>
	<div style="padding: 0 18px;">
	<h3>Update user details</h3>

	<form:form action="updateuser" method="post" name="reg_form"
		modelAttribute="updateuser" onsubmit="return validateform()">
		<div class="container">
			<table class="center"><caption></caption>
				<tr>
					<td><form:hidden path="userId" value="${userId}" /></td>
				</tr>
				<tr>
					<th scope="col">First Name :</th>
					<td><input type="text" id="firstName" name="firstName"
							title="Name can't be empty or must contain only alphabets"
							placeholder="Enter the first name" pattern="^[a-zA-Z]+$" required /></td>
				</tr>
				<tr>
					<th scope="col">Last Name :</th>
					<td><input type="text" id="lastName" name="lastName"
							title="Name can't be empty or must contain only alphabets"
						placeholder="Enter the last name"	pattern="^[a-zA-Z]+$" required/></td>
				</tr>
				<tr>
					<th scope="col">Gender :</th>
					<td><input type="radio" id="gender" name="gender" value="Male"
							required/> Male <input type="radio" id="gender" 
							name="gender" value="Female" required/> Female <input type="radio" id="gender" name="gender" value="Others" required/>
						Others</td>
				</tr>
				<tr>
					<th scope="col">Age :</th>
					<td><input type="number" id="age" name="age" min="15" max="70" placeholder="Enter the age"
						title="Age must be gretaer than 15 or less than 70" required /></td>
				</tr>
				<tr>
					<th scope="col">Email :</th>
					<td><input type="text" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}"
					placeholder="Enter the email(ex: epass@gmail.com) " title="Invalid email (ex: epass@gmail.com)" required/></td>
				</tr>
				<tr>
					<th scope="col">Address :</th>
					<td><input type="text" id="address" name="address"
						placeholder="Enter the address"	title="Address should atleast contain 10 characters"
							required/></td>
				</tr>
				<tr>
					<th scope="col">Mobile Number :</th>
					<td><input type="text" id="mobileNumber" name="mobileNumber"
							pattern="[1-9]{1}[0-9]{9}" placeholder="Enter the mobile number"
							title="Phone number should have atleast 10 digits"
							required/></td>
				</tr>
				<tr>
					<th scope="col">User Password :</th>
					<td><input type="password" id="userPassword" name="userPassword" placeholder="Enter the password"
							pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$"
						title="password must contain one uppercase, one lowercase & one special symbol"	required /></td>
				</tr>
				<tr>
					<th scope="col">Confirm Password :</th>
					<td><input type="password" id="secondpassword" placeholder="Confirm the password"
						name="secondpassword" required/></td>
				</tr>
				<table  class="center"><caption></caption>
				<tr><th></th>
					<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
				</tr>
				</table>
			</table>
			</div>
	</form:form>
	</div>
	</div>
</body>
</html>