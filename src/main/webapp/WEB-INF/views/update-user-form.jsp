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
* {
	text-align: center;
}
.center {
	margin-left: auto;
	margin-right: auto;
}
* {
  background-image: url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 3000px 2000px;
}
.error {
	color: red
}
</style>
</head>
<script>
	function validateform() {
		var firstpassword = document.reg_form.firstpassword.value;
		var secondpassword = document.reg_form.secondpassword.value;
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
</script>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Update user details</h3>
	<br>
	<form:form action="updateuser" method="post" name="reg_form"
		modelAttribute="updateuser" onsubmit="return validateform()">
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
			</tr> --%>
			<tr>
				<td><input type="submit" name="submit" value="Submit">
					<input type="reset" name="reset" value="Reset"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>