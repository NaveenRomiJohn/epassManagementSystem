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
	text-align: center;
}

table {
	width: 90%;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h2>All Epass List</h2>
	<h3>Epass List Type</h3>
	<div id="Epass table">
		<table class="center">
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
					<th>Application Type</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="epass" items="${allepassform}">
					<%-- <c:if test="${epass.applicationType=='within district' }"> --%>
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
						<td>${epass.applicationType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<br>
	<h3>Outside state List</h3>
	<div id="Outside state table">
		<table class="center">
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
	<br>
	<h3>Passengers List</h3>
	<div id="Passengers Table">
		<table class="center">
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