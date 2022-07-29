<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
</head>
<body>
	<h3>User Registration form</h3>
	<!-- <div id="root">
		<div id="form"> -->
	<form:form action="add" method="post" modelAttribute="adduser">
					First Name:<form:input path="firstName" />
		<br>
					Last Name:<form:input path="lastName" />
		<br>
					Email:<form:input type=?email? path="email" />
		<br>
					Date of Birth:<form:input type=?date? path="dateOfBirth" />
		<br>
					Gender:
						Male:<form:radiobutton path="gender" value="Male" />
		<br> 
						Female:<form:radiobutton path="gender" value="Female" />
		<br>
			Address:
				<textarea cols="80" rows="5" id="address">  
				</textarea>
		<br>
			Phone Number:
				<input type="text" id="phoneNumber" name="country code" value="+91"
			size="2" />
		<input type="text" id="phoneNumber" name="phone" size="10" />
		<br>
			Password
			<form:password path="password" id="userPassword" name="psw"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
			required />
		<br>
		<input type="button" value="Submit" />
		<input type="reset">
	</form:form>
	<!-- </div>
	</div> -->
</body>
</html>