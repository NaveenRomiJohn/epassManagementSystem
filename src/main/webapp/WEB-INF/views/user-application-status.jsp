<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Epass Application Status</title>
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
	<hr />
	<h2>Application Status</h2>
	<div id="applist">
		<table>
			<thead>
				<tr>
					<th>Epass Id</th>
					<th>Travel Reason</th>
					<th>From Date</th>
					<th>To Date</th>
					<th>Application Type</th>
					<th>From Address</th>
					<th>Destination Address</th>
					<th>Applied Date</th>
					<th>Vehicle Number</th>
					<th>Number Of passengers</th>
					<th>Application Status</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${epassForm.epassId}</td>
					<td>${epassForm.travelReason}</td>
					<td>${epassForm.fromDate}</td>
					<td>${epassForm.toDate}</td>
					<td>${epassForm.applicationType}</td>
					<td>${epassForm.fromAddress}</td>
					<td>${epassForm.destinationAddress}</td>
					<td>${epassForm.appliedDate}</td>
					<td>${epassForm.vehicleNumber}</td>
					<td>${epassForm.numberOfPassengers}</td>
					<td>${epassForm.approvalStatus}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>