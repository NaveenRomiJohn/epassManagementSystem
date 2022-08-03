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
h1, h2, h3 {
	text-align: center;
}

table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Epass Registration form</h3>
	<h2>Within District</h2>
	<div id="root">
		<div id="epassform">
			<form:form action="" method="post" modelAttribute="getepass">
				<div>
					EpassId :
					<form:input path="epassId" />
				</div>
				<br>
				<div>
					Travel Reason :
					<form:input path="travelReason" />
				</div>
				<br>
				<div>
					From Date :
					<form:input path="fromDate" />
				</div>
				<br>
				<div>
					To Date :
					<form:input path="toDate" />
				</div>
				<br>
				<div>
					From Address :
					<form:textarea path="fromAddress" cols="50" rows="4" />
				</div>
				<br>
				<div>
					Destination Address :
					<form:textarea path="destinationAddress" cols="50" rows="4" />
				</div>
				<br>
				<div>
					Vehicle Number :
					<form:input path="vehicleNumber" />
				</div>
				<br>
				<div>
					Number of passengers :
					<form:input path="numberOfPassengers" />
				</div>
				<br>
				<div>
					Applied Date :
					<form:input path="appliedDate" />
				</div>
			</form:form>
		</div>
	</div>
	<div id="passengers">
		<table>
			<thead>
				<tr>
					<th>Passenger Name</th>
					<th>Gender</th>
					<th>Date Of Birth</th>
					<th>Covid Symptoms</th>
					<th>Id Proof Type</th>
					<th>Id proof Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="passengers" items="${getpassengers}">
					<!-- var-variables,items-collection -->
					<tr>
						<td>${passengers.passengerName}</td>
						<td>${passengers.passengerGender}</td>
						<td>${passengers.dateOfBirth}</td>
						<td>${passengers.covidSymptoms}</td>
						<td>${passengers.idProofType}</td>
						<td>${passengers.idProofNumber}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>