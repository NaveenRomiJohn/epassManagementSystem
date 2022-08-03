<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users List</title>
<style>
table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
	<div id="Table root"></div>
	<table>
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
				<!-- var-variables,items-collection -->
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