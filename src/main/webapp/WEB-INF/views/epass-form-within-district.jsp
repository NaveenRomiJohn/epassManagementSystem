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
h1,h2,h3{text-align: center;}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Epass Registration form</h3>
	<h2>Within District</h2>
	<div id="root">
		<div id="form">
			<form:form action="registerWithinDistrict" method="post" modelAttribute="addEpass">
				
				<div>
				EpassId :<form:input path="epassId" />
				</div>
				<br>
				<div>
				Travel Reason : <form:input path="travelReason" />
				</div>
				<br>
				<div>
				From Date : <form:input path="fromDate" />
				</div>
				<br>
				<div>
				To Date : <form:input path="toDate" />
				</div>
				<br>
				<div>
				From Address : <form:textarea path="fromAddress" cols="50" rows="4" />
				</div>
				<br>
				<div>
				Destination Address : <form:textarea path="destinationAddress" cols="50" rows="4" />
				</div>
				<br>
				<div>
				Vehicle Number : <form:input path="vehicleNumber" />
				</div>
				<br>
				<div>
				Number of passengers : <form:input path="numberOfPassengers" />
				</div>
				<br>
				<div>
				Applied Date : <form:input path="appliedDate" />
				</div>
				<br>
				<div>
				Passenger Name : <form:input path="passengerName" />
				</div>
				<br>
                <div>
                Gender : <form:radiobutton path="passengerGender" value="Male" />Male
                         <form:radiobutton path="passengerGender" value="Female" />Female
                </div>
				<br>
				<div>
				Date of Birth : <form:input path="dateOfBirth" />
				</div>
				<br>
				<div>
				Id Proof Type : <form:radiobutton path="idProofType" value="Aadhar" />Aadhar Card
				<form:radiobutton path="idProofType" value="Driving License" />Driving License
				<form:radiobutton path="idProofType" value="Ration Card" />Ration Card
				</div>
				<br>
				<div>
				Id Proof Number : <form:input path="idProofNumber" />
				</div>
				<br>
				<div>
				Covid Symptoms : <form:radiobutton path="covidSymptoms" value="Yes" />Yes
				<form:radiobutton path="covidSymptoms" value="No" />No
				</div>
				<br>
				<div>
				<input type="submit" value="Submit" />
				<input type="reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>