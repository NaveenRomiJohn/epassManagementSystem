<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Users List</title>
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
	<h2>Users List</h2>
	<table id="alter" class="center"><caption></caption>
		<thead>
			<tr>
				<th>User Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Age</th>
				<th>Email</th>
				<th>Mobile Number</th>
				<th>Address</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${allusers}">
				<tr>
					<td>${user.userId}</td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.gender}</td>
					<td>${user.age}</td>
					<td>${user.email}</td>
					<td>${user.mobileNumber}</td>
					<td>${user.address}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>