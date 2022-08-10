<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
* {
	text-align: center;
}

div {
	height: 200px;
	width: 400px;
	position: fixed;
	top: 30%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
}

td {
	text-align: center;
}

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
}

.text-danger {
	color: #e80c4d;
	font-size: 14px;
}
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
	<h1>E-Pass Management System</h1>
	<div>
		<h2>User Registration Form</h2>
		<form:form action="adduser" name="reg_form" method="post"
			modelAttribute="adduser" onsubmit="return validateform()">
			<table>
				<tr>
					<td>User Id :</td>
					<td><form:input path="userId" name="userId" min="6" max="15"
							required="true" /></td>
				</tr>
				<tr>
					<td>First Name :</td>
					<td><form:input path="firstName" name="firstName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<td>Last Name :</td>
					<td><form:input path="lastName" name="lastName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td><form:radiobutton path="gender" name="gender" value="Male"
							required="true" /> Male <form:radiobutton path="gender"
							name="gender" value="Female" required="true" /> Female <form:radiobutton
							path="gender" name="gender" value="Others" required="true" />
						Others</td>
				</tr>
				<tr>
					<td>Age :</td>
					<td><form:input path="age" name="age" pattern="^[0-9]{2,3}$"
							title="Age must be gretaer than 15 or less than 70"
							required="true" /></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><form:input path="email" name="email"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email ex: epass@gmail.com" required="true" /></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><form:textarea path="address" name="address"
							title="Address should atleast contain 10 characters"
							required="true" /></td>
				</tr>
				<tr>
					<td>Mobile Number :</td>
					<td><form:input path="mobileNumber" name="mobileNumber"
							pattern="[1-9]{1}[0-9]{9}"
							title="Phone number should have atleast 10 digits"
							required="true" /></td>
				</tr>
				<tr>
					<td>User Password :</td>
					<td><form:password path="userPassword" name="firstpassword"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8}$"
							required="true" /></td>
				</tr>
				<tr>
					<td>Confirm Password :</td>
					<td><input type="password" id="secondpassword"
						name="secondpassword" /></td>
				</tr>
				<tr>
					<td><form:button type="submit">Register</form:button> <form:button
							type="reset">Reset</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>