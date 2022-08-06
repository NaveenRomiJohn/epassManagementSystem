<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All EPass Form</title>
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
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h2>All Epass List</h2>
	<div id="Epass table">
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
					<th>Approval Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="epass" items="${allepassform}">
					<!-- var-variables,items-collection -->
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
						<td>${epass.approvalStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<div id="Outside state table">
		<table>
			<thead>
				<tr>
					<th>Epass Id</th>
					<th>From State</th>
					<th>To State</th>
					<th>Quarantine From Date</th>
					<th>Quarantine To Date</th>
					<th>Quarantine Location</th>
					<th>PCR Result Certificate Date</th>
					<th>PCR Result Certificate Number</th>
					<th>PCR Certificate Issued by</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="outsidestate" items="${alloutsidestate}">
					<!-- var-variables,items-collection -->
					<tr>
						<td>${outsidestate.epassId}</td>
						<td>${outsidestate.fromState}</td>
						<td>${outsidestate.toState}</td>
						<td>${outsidestate.quarantineFromDate}</td>
						<td>${outsidestate.quarantineToDate}</td>
						<td>${outsidestate.quarantineLocation}</td>
						<td>${outsidestate.pcrResultCertificateDate}</td>
						<td>${outsidestate.pcrResultCertificateNumber}</td>
						<td>${outsidestate.pcrCertificateIssuedBy}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<div id="Passengers Table">
		<table>
			<thead>
				<tr>
					<th>Epass Id</th>
					<th>Passenger Name</th>
					<th>Gender</th>
					<th>Date Of Birth</th>
					<th>Covid Symptoms</th>
					<th>Id Proof Type</th>
					<th>Id proof Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="passengers" items="${allpassengers}">
					<!-- var-variables,items-collection -->
					<tr>
						<td>${passengers.epassId}</td>
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