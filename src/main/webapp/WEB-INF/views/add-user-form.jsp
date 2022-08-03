<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
* {
	text-align: center;
}
.error{color:red}  
</style>
</head>
<script>
	function validateform() {
		var userid = document.reg_form.userid.value;
		var firstname = document.reg_form.firstname.value;
		var lastname = document.reg_form.lastname.value;
		var gender = document.reg_form.gender.value;
		var age = document.reg_form.age.value;
		var email = document.reg_form.email.value;
		var address = document.reg_form.addres.values;
		var phone = document.reg_form.phone.value;
		var firstpassword = document.reg_form.firstpassword.value;
		if (firstname==null || firstname=="") {
			alert("First Name can't be blank");
			return false;
		}
		if (lastname==null || lastname=="") {
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

		if (phone.length <= 0) {
			alert("Mobile number is required");
			return false;
		}
		if (firstpassword.length<6) {
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
	<h3>User Registration form</h3>
	<div id="root">
		<div id="form">
			<form:form action="adduser" method="post" modelAttribute="addUser"
				name="reg_form" onsubmit="return validateform()">

				<div>
					UserId :
					<form:input path="userId" name="userid" />
				</div>
				<br>
				<div>
					First Name :
					<form:input path="firstName" name="firstname" />
				</div>
				<br>
				<div>
					Last Name :
					<form:input path="lastName" name="lastname" />
				</div>
				<br>
				<div>
					Gender :
					<form:radiobutton path="gender" name="gender" value="Male" />
					Male
					<form:radiobutton path="gender" name="gender" value="Female" />
					Female
				</div>
				<br>
				<div>
					Age :
					<form:input type="text" path="age" name="age" />
				</div>
				<br>
				<div>
					Email :
					<form:input path="email" name="email" />
				</div>
				<br>
				<div>
					Address :
					<form:textarea path="address" name="address" cols="50" rows="4" />
				</div>
				<br>
				<div>
					Mobile Number :
					<form:input path="mobileNumber" name="phone" size="10" />
				</div>
				<br>
				<div>
					User Password :
					<form:password path="userPassword" name="firstpassword" />
					<form:errors path="userPassword" cssClass="error"/>
				</div>
				<br>
				<div>
					Confirm Password :
					<form:password path="userPassword" name="secondpassword" />
				</div>
				<br>
				<div>
					<input type="submit" name="submit" value="Submit"> <input
						type="reset" name="reset" value="Reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>