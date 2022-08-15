<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page
	import="java.io.*,java.util.*, javax.servlet.*,java.sql.*, com.chainsys.epassManagementSystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Outside State</title>
<style>
h1, h2, h3 {
	text-align: center;
}

div {
	height: 200px;
	width: 400px;
	position: fixed;
	top: 30%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
}
<%@include file="navbar.css" %>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li><a class="active" href="epassformtype">EpassForm</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div style="padding: 0 16px;">
	<div id="epassform">
		<h2>Epass Registration form</h2>
		<h3>Outside State</h3>
		<form:form action="epassformoutsidestateregistered" method="post"
			modelAttribute="epassoutsidestate">
			<table>
				<tr>
					<td>User Id :</td>
					<td><form:input path="userId" required="true" /></td>
				</tr>
				<tr>
					<td>Travel Reason :</td>
					<td><form:select path="travelReason">
							<form:option value="-" label="--Please Select--" required="true" />
							<form:option value="Medical Emergency" label="Medical Emergency"
								required="true" />
							<form:option value="Marriage" label="Marriage" required="true" />
							<form:option value="Death" label="Death" required="true" />
							<form:option value="On Going Government Work"
								label="On Going Government Work" required="true" />
						</form:select></td>
				</tr>
				<tr>
					<td>From Date :</td>
					<td><input id="fromDate" name="fromDate" type="date"
						min="<%=Logic.getInstanceDate()%>" required /></td>
				</tr>
				<tr>
					<td>To Date :</td>
					<td><input id="toDate" name="toDate" type="date"
						min="<%=Logic.getInstanceDate()%>" required /></td>
				</tr>
				<tr>
					<td><form:hidden path="applicationType"
							value="Within District" /></td>
				</tr>
				<tr>
					<td>From Address :</td>
					<td><form:textarea path="fromAddress"
							title="Address should atleast contain 10 characters"
							required="true" /></td>
				</tr>
				<tr>
					<td>Destination Address :</td>
					<td><form:textarea path="destinationAddress"
							title="Address should atleast contain 10 characters"
							required="true" /></td>
				</tr>
				<tr>
					<td>Vehicle Number :</td>
					<td><form:input path="vehicleNumber"
							pattern="^[A-Z]{2}[0-9]{2}[A-HJ-NP-Z]{1,2}[0-9]{4}$"
							title="Vehicle number must be in TN12AB1234 format" /></td>
				</tr>
				<tr>
					<td>Number of passengers :</td>
					<td><input type="number" id="numberOfPassengers"
						name="numberOfPassengers" min="1"
						title="Select the number of passengers" required /></td>
				</tr>
				<tr>
					<form:hidden path="approvalStatus" value="processing" />
				</tr>
				<tr>
					<form:hidden path="adminId" value="admin01" />
				</tr>
				<tr>
					<td><form:button type="submit">Register</form:button> <form:button
							type="reset">Reset</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
	</div>
</body>
</html>