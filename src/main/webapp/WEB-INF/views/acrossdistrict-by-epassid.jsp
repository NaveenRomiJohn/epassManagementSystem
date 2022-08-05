<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass form</title>
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
	<h2>Epass Form</h2>
	<h3>Across District</h3>

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
	<br>
	<div id="Across District table">
		<table>
			<thead>
				<tr>
					<th>From District</th>
					<th>To District</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="across" items="${acrossdistrict}">
					<tr>
						<td>${across.fromDistrict}</td>
						<td>${across.toDistrict}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>