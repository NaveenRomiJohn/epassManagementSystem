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

.center {
	margin-left: auto;
	margin-right: auto;
}

.error {
	color: red
}
</style>
</head>
<!-- <script>
	function validateform() {
		var userId = document.reg_form.userId.value;
		var firstName = document.reg_form.firstName.value;
		var lastName = document.reg_form.lastName.value;
		var gender = document.reg_form.gender.value;
		var age = document.reg_form.age.value;
		var email = document.reg_form.email.value;
		var address = document.reg_form.addres.values;
		var mobileNumber = document.reg_form.mobileNumber.value;
		var firstpassword = document.reg_form.firstpassword.value;
		var secondpassword = document.reg_form.secondpassword.value;
		if (userId == null || userId == "") {
			alert("User Id is required or can't be blank");
			return false;
		}
		if (firstName == null || firstName == "") {
			alert("First Name can't be blank");
			return false;
		}
		if (lastName == null || lastName == "") {
			alert("Last Name is required");
			return false;
		}
		if (gender.length <= 0) {
			alert("Gender is required");
			return false;
		}
		if (age.length <= 0) {
			alert("Age is required");
			return false;
		}
		if (email.length <= 0) {
			alert("Email Id is required");
			return false;
		}
		if (address.length <= 0) {
			alert("Address is required");
			return false;
		}

		if (mobileNumber.length <= 0) {
			alert("Mobile number is required");
			return false;
		}
		if (firstpassword.length < 6) {
			alert("Password must be at least 6 characters long");
			return false;
		}
		if (firstpassword == secondpassword) {
			return true;
		} else {
			alert("Password must be same!");
			return false;
		}
	}
</script> -->
<body>
	<h1>E-Pass Management System</h1>
	<h2>User Registration form</h2>
	<br>
	<form:form action="adduser" name="reg_form" method="post"
		modelAttribute="adduser" onsubmit="return validateform()">
		<table class="center">
			<tr>
				<td>UserId :</td>
				<td><form:input path="userId" name="userId" /></td>
				<td><form:errors path="userId" cssClass="error" /></td>
			</tr>
			<tr>
				<td>First Name :</td>
				<td><form:input path="firstName" name="firstName" /></td>
				<td><form:errors path="firstName" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><form:input path="lastName" name="lastName" /></td>
			</tr>
			<tr>
				<td>Gender :</td>
				<td><form:radiobutton path="gender" name="gender" value="Male" />
					Male <form:radiobutton path="gender" name="gender" value="Female" />
					Female</td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><form:input type="text" path="age" name="age" /></td>
				<td><form:errors path="age" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><form:input path="email" name="email" /></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><form:textarea path="address" name="address" cols="20"
						rows="2" /></td>
			</tr>
			<tr>
				<td>Mobile Number :</td>
				<td><form:input path="mobileNumber" name="mobileNumber"
						size="10" /></td>
				<td><form:errors path="mobileNumber" cssClass="error" /></td>
			</tr>
			<tr>
				<td>User Password :</td>
				<td><form:password path="userPassword" name="firstpassword" /></td>
				<td><form:errors path="userPassword" cssClass="error" /></td>
			</tr>
			<%-- <tr>
				<td>Confirm Password :</td>
				<td><form:password path="userPassword" name="secondpassword" /></td>
				<td><form:errors path="userPassword" cssClass="error" /></td>
			</tr>
			<br> --%>
			<tr>
				<td><input type="submit" name="submit" value="Submit">
					<input type="reset" name="reset" value="Reset"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>