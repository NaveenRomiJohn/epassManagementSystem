<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Epass Processing Status</title>
<style>
h1, h2, h3 {
	text-align: center;
}
table {
	width: 90%;
}
table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
* {
  background-image: url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 3000px 2000px;
}
* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<hr />
	<h2>Epass Processing List</h2>
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
				<c:forEach var="epass" items="${epassForm}">
					<tr>
						<td>${epass.epassId}</td>
						<td>${epass.travelReason}</td>
						<td>${epass.fromDate}</td>
						<td>${epass.toDate}</td>
						<td>${epass.applicationType}</td>
						<td>${epass.fromAddress}</td>
						<td>${epass.destinationAddress}</td>
						<td>${epass.appliedDate}</td>
						<td>${epass.vehicleNumber}</td>
						<td>${epass.numberOfPassengers}</td>
						<td>${epass.approvalStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<h3>Enter the EpassId to take action on epass request</h3>
	<form action="statuschange" method="get">
			<div>
				Epass Id :
				<input type="text" name="epassId" />
			</div>
			<div>
				<input type="submit" value="Submit" />
			</div>
	</form>
</body>
</html>