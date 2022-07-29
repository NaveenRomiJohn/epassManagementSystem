<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass Request List</title>
</head>
<body>
	<div id="Table root"></div>
	<table>
		<thead>
			<tr>
				<th>User Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Date of Birth</th>
				<th>Gender</th>
				<th>Address</th>
				<th>Phone Number</th>
				<th>Register Date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="epass" items="${allemployees}">
				<!-- var-variables,items-collection -->
				<tr>
					<td>${employee.emp_id}</td>
					<td>${employee.first_name}</td>
					<td>${employee.last_name}</td>
					<td>${employee.email}</td>
					<td>${employee.hire_date}</td>
					<td>${employee.job_id}</td>
					<td>${employee.salary}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>