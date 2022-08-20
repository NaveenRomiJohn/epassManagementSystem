<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Epass Requests</title>
<style type="text/css">
 <%@include file="css/navbar.css"%>
  <%@include file="css/dropdown.css"%>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="/admin/adminloggedin?adminId=${adminId}">Admin</a></li>
		<li class="right"><a href="">Admin : ${adminId}</a></li>
		<div class="dropdown">
        <button class="dropbtn">Admin 
     	 <em class="fa fa-caret-down"></em> </button>
    	<div class="dropdown-content">
    	  	<a href="allusers">Users</a>
     	 	<a href="epassprocessingstatus">Epass Requests</a>
      		<a href="epassapprovedlist">Epass Approved</a>
      		<a href="epassrejectedlist">Epass Rejected</a>
      		<a href="epassrequests">Epass Details</a>
    	</div>
    	</div>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<h3>Epass Requests</h3>
	<div id="applist">
		<table><caption></caption>
			<thead>
				<tr>
					<th>Epass Id</th>
					<th>Applied Date</th>
					<th>Travel Reason</th>
					<th>From Date</th>
					<th>To Date</th>
					<th>From Address</th>
					<th>Destination Address</th>
					<th>Destination Address</th>
					<th>Vehicle Number</th>
					<th>Number Of passengers</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="epass" items="${epassrequests}">
					<tr>
						<td>${app.appointment_id}</td>
						<td>${app.appointment_date}</td>
						<td>${app.doctor_id}</td>
						<td>${app.patient_name}</td>
						<td>${app.fees_collected}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>