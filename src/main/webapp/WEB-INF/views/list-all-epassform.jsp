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
table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
}
* {
	text-align: center;
}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Epass List</h3>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>