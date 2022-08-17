<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<li><a href="usertype">user</a></li>
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
			<c:forEach var="user" items="${epassForm}">
				<tr>
					<td>${user.epassId}</td>
					<td>${user.travelReason}</td>
					<td>${user.fromDate}</td>
					<td>${user.toDate}</td>
					<td>${user.applicationType}</td>
					<td>${user.fromAddress}</td>
					<td>${user.destinationAddress}</td>
					<td>${user.appliedDate}</td>
					<td>${user.vehicleNumber}</td>
					<td>${user.numberOfPassengers}</td>
					<td>${user.approvalStatus}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>