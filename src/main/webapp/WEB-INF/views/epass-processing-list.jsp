<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Epass Processing Status</title>
<style type="text/css">
<%@include file="style.css" %>
 <%@include file="navbar.css"%>
  <%@include file="dropdown.css"%>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<div class="dropdown">
        <button class="dropbtn">Admin 
     	 <em class="fa fa-caret-down"></em> </button>
    	<div class="dropdown-content">
    	  	<a href="allusers">Users</a>
     	 	<a href="epassprocessingstatus">Epass requests</a>
      		<a href="epassapprovedlist">Epass Approved</a>
      		<a href="epassrejectedlist">Epass Rejected</a>
      		<a href="epassrequests">Epass Details</a>
    	</div>
    	</div>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<h2>Epass Processing List</h2>
	<div id="applist">
		<table id="alter" class="center">
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
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="epass" items="${epassFormProcessing}">
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
						<td><button
								onclick="window.location.href='/statuschange?epassId=${epass.epassId}'">Update</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>