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
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
	<div id="Table root"></div>
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
					<td>${epass.salary}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>