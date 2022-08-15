<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>E-Pass form</title>
<style>
h1, h2, h3 {
	text-align: center;
}
* {
  background-image: url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 3000px 2000px;
}
table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h2>Epass Form</h2>
	<h3>Within District</h3>

	<div id="Table root">
		<table>
			<thead>
				<tr>
					<th>Epass Id</th>
					<th>Travel Reason</th>
					<th>From Date</th>
					<th>To Date</th>
					<th>Vehicle Number</th>
					<th>Number of Passengers</th>
					<th>Applied Date</th>
					<th>From Address</th>
					<th>Destination Address</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${epass.epassId}</td>
					<td>${epass.travelReason}</td>
					<td>${epass.fromDate}</td>
					<td>${epass.toDate}</td>
					<td>${epass.vehicleNumber}</td>
					<td>${epass.numberOfPassengers}</td>
					<td>${epass.appliedDate}</td>
					<td>${epass.fromAddress}</td>
					<td>${epass.destinationAddress}</td>
				</tr>
			</tbody>
		</table>
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