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
h1, h2, h3 {
	text-align: center;
}table {
	width: 90%;
}
* {
  background-image: url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 3000px 2000px;
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
	<h2>Users List</h2>
	<div id="Table root">
		<table>
			<thead>
				<tr style="text-align: center">
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
	</div>
</body>
</html>