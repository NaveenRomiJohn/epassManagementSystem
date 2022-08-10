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

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
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

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
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
</body>
</html>