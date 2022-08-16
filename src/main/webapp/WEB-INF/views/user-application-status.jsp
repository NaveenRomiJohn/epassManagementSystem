<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Epass Application Status</title>
<style type="text/css">
  <%@include file="css/style.css" %>
  <%@include file="css/navbar.css"%>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="userloggedin">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li><a href="epassformtype">EpassForm</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<h2>Application Status</h2>
	<div id="applist">
		<table id="alter" class="center"><caption></caption>
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