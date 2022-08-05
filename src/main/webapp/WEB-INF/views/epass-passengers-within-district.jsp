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

table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h2>Epass Registration form</h2>
	<h3>Passengers Within District</h3>
	<div id="root">
		<div id="passengerform">
			<form:form action="registerwithindistrict" method="post"
				modelAttribute="passengerswithindistrict">
				<div>
					EpassId :
					<form:input path="epassId" />
				</div>
				<br>
				<div>
					Passenger Name :
					<form:input path="passengerName" />
				</div>
				<br>
				<div>
					Gender :
					<form:radiobutton path="passengerGender" value="Male" />
					Male
					<form:radiobutton path="passengerGender" value="Female" />
					Female
				</div>
				<br>
				<div>
					Date of Birth :
					<form:input path="dateOfBirth" type="date" />
				</div>
				<br>
				<div>
					Id Proof Type :
					<form:select path="idProofType">
						<form:option value="Aadhar Card" label="Aadhar Card" />
						<form:option value="Driving License" label="Driving License" />
						<form:option value="Ration Card" label="Ration Card" />
					</form:select>
				</div>
				<br>
				<div>
					Id Proof Number :
					<form:input path="idProofNumber" />
				</div>
				<br>
				<div>
					Covid Symptoms :
					<form:radiobutton path="covidSymptoms" value="Yes" />
					Yes
					<form:radiobutton path="covidSymptoms" value="No" />
					No
				</div>
				<br>
				<div>
					<input type="submit" value="Submit" /> <input type="reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>