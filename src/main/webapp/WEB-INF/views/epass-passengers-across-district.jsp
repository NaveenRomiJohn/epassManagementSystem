<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
h1, h2, h3 {
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
<%@include file="navbar.css" %>
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
		<h2>Epass Registration form</h2>
		<h3>Passengers Across District</h3>

		<form:form action="epassacrossregistered" method="post"
			modelAttribute="passengersacrossdistrict">
			<table>
				<tr>
					<td>Your Epass Id:</td>
					<td><form:input path="epassId" value="${epassId}"
							readonly="true" /></td>
				</tr>
				<tr>
					<td>Passenger Name :</td>
					<td><form:input path="passengerName" required="true" /></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td><form:radiobutton path="passengerGender" name="gender"
							value="Male" required="true" /> Male <form:radiobutton
							path="passengerGender" name="gender" value="Female"
							required="true" /> Female <form:radiobutton
							path="passengerGender" name="gender" value="Others"
							required="true" /> Others</td>
				</tr>
				<tr>
					<td>Date of Birth :</td>
					<td><form:input path="dateOfBirth" type="date" required="true" /></td>
				</tr>
				<tr>
					<td>Id Proof Type :</td>
					<td><form:select path="idProofType">
							<form:option value="Aadhar Card" label="Aadhar Card"
								required="true" />
							<form:option value="Driving License" label="Driving License"
								required="true" />
						</form:select></td>
				</tr>
				<tr>
					<td>Id Proof Number :</td>
					<td><form:input path="idProofNumber"
							pattern="^[1-9]{4}[-]{1}[0-9]{4}[-]{1}[0-9]{4}$"
							title="Adhaar must be number" required="true" /></td>
				</tr>
				<tr>
					<td>Covid Symptoms :</td>
					<td><form:radiobutton path="covidSymptoms" value="Yes"
							required="true" /> Yes <form:radiobutton path="covidSymptoms"
							value="No" required="true" /> No</td>
				</tr>
				<tr>
					<td><form:button type="submit">Register</form:button> <form:button
							type="reset">Reset</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
	</div>
</body>
</html>