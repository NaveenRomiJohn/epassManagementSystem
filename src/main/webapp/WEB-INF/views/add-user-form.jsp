<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
			alert("Password must be same!");
			return false;
		}
	}
</script>
<body>
<ul class="topnav">
		<li><a href="/home/index">Home</a></li>
		<li><a class="active" href="/home/userloginform">User</a></li>
		<li class="right"><a href="/home/index">Epass Management System</a></li>
	</ul>
	<div style="padding: 0 18px;" id="form">
		<h2>User Registration Form</h2>
		<form:form action="/home/adduser" name="reg_form" method="post"
			modelAttribute="adduser" onsubmit="return validateform()">
			 <div class="container">
			<table class="center"><caption></caption>
				<tr>
					<th scope="col">User Id :</th>
					<td><input type="text" id="userId" name="userId" min="6" max="15" placeholder="Please choose your UserId"
							required/></td>
				</tr>
				<tr>
					<th scope="col">First Name :</th>
					<td><input type="text" id="firstName" name="firstName"
							title="Name can't be empty or must contain only alphabets" placeholder="Please enter the first name"
							pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" required /></td>
				</tr>
				<tr>
					<th scope="col">Last Name :</th>
					<td><input type="text" id="lastName" name="lastName" placeholder="Please enter the last name"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" required/></td>
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
					<td><input type="number" id="age" name="age" min="15" max="70" placeholder="Please enter the age"
						title="Age must be gretaer than 15 or less than 70" required /></td>
				</tr>
				<tr>
					<th scope="col">Email :</th>
					<td><input type="text" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}"
						placeholder="Please enter the emailId"	title="Invalid email ex: epass@gmail.com" required/></td>
				</tr>
				<tr>
					<th scope="col">Address :</th>
					<td><input type="text" id="address" name="address" placeholder="Please enter the current address"
							title="Address should atleast contain 10 characters"
							required/></td>
				</tr>
				<tr>
					<th scope="col">Mobile Number :</th>
					<td><input type="text" id="mobileNumber" name="mobileNumber"
							pattern="[1-9]{1}[0-9]{9}" placeholder="Please enter the mobile number"
							title="Phone number should have atleast 10 digits"
							required/></td>
				</tr>
				<tr>
					<th scope="col">User Password :</th>
					<td><form:password path="userPassword" name="userPassword" placeholder="Please enter the password"
							title="Password must be minimum 8 characters with alphabets,one special and one number"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Confirm Password :</th>
					<td><input type="password" id="secondpassword" name="secondpassword" placeholder="Please enter the confirm password"
					title="Password must contain atleast one uppercase,lowercase,special symbol & number" required/></td>
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
</body>
</html>