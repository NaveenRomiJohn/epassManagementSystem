<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Ouside State</title>
<style>
<%@include file="css/form.css" %>
<%@include file="css/navbar.css" %>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li><a class="active" href="epassformtype">EpassForm</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div style="padding: 0 16px;">
	<div id="passengerform">
		<h2>Epass Registration Form</h2>
		<h3>Passengers Outside State</h3>
		<form:form action="epassoutsidestateregistered" method="post"
			modelAttribute="passengersoutsidestate">
			<table class="center"><caption></caption>
				<tr>
					<th scope="col">Your Epass Id:</th>
					<td><form:input path="epassId" value="${epassId}"
							readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Passenger Name :</th>
					<td><form:input path="passengerName" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Gender :</th>
					<td><form:radiobutton path="passengerGender" name="gender"
							value="Male" required="true" /> Male <form:radiobutton
							path="passengerGender" name="gender" value="Female"
							required="true" /> Female <form:radiobutton
							path="passengerGender" name="gender" value="Others"
							required="true" /> Others</td>
				</tr>
				<tr>
					<th scope="col">Date of Birth :</th>
					<td><form:input path="dateOfBirth" type="date" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Id Proof Type :</th>
					<td><div class="custom-select" style="width:108%;"><form:select path="idProofType">
							<form:option value="Aadhar Card" label="Aadhar Card"
								required="true" />
						</form:select></div></td>
				</tr>
				<tr>
					<th scope="col">Id Proof Number :</th>
					<td><form:input path="idProofNumber"
							pattern="^[1-9]{4}[-]{1}[0-9]{4}[-]{1}[0-9]{4}$"
							title="Adhaar must be number(ex: 1234-5678-9012)" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Covid Symptoms :</th>
					<td><form:radiobutton path="covidSymptoms" value="Yes"
							required="true" /> Yes <form:radiobutton path="covidSymptoms"
							value="No" required="true" /> No</td>
				</tr>
				<tr>
					<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
				</tr>
			</table>
		</form:form>
	</div>
	</div>
	<script type="text/javascript">
<%@include file="js/select.js" %>
</script>
</body>
</html>