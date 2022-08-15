<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page
	import="java.io.*,java.util.*, javax.servlet.*,java.sql.*, com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
<%@include file="navbar.css" %>
<%@include file="form.css" %>
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

	<div style="padding: 0 30px;">
		<div id="epassform">
			<h2>Epass Registration Form</h2>
			<h3>Within District</h3>
			<form:form action="epassformwithinregistered" method="post"
				modelAttribute="epasswithindistrict">
				<table class="center"><caption></caption>
					<tr>
						<th scope="col">User Id :</th>
						<td><form:input path="userId" required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Travel Reason :</th>
						<td><form:select path="travelReason" required="true">
								<form:option value="Medical Emergency" label="Medical Emergency"
									required="true" />
								<form:option value="Marriage" label="Marriage" required="true" />
								<form:option value="Death" label="Death" required="true" />
								<form:option value="On Going Government Work"
									label="On Going Government Work" required="true" />
							</form:select></td>
					</tr>
					<tr>
						<th scope="col">From Date :</th>
						<td><input id="fromDate" name="fromDate" type="date"
							min="<%=Logic.getInstanceDate()%>" required /></td>
					</tr>
					<tr>
						<th scope="col">To Date :</th>
						<td><input id="toDate" name="toDate" type="date"
							min="<%=Logic.getInstanceDate()%>" required /></td>
					</tr>
					<tr>
						<td><form:hidden path="applicationType"
								value="Within District" /></td>
					</tr>
					<tr>
						<th scope="col">District :</th>
						<td><form:input path="fromDistrict"
								title="Name can't be empty or must contain only alphabets"
								pattern="^[a-zA-Z]+$" required="true" /></td>
					</tr>
					<tr>
						<th scope="col">From Address :</th>
						<td><form:textarea path="fromAddress"
								title="Address should atleast contain 10 characters"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Destination Address :</th>
						<td><form:textarea path="destinationAddress"
								title="Address should atleast contain 10 characters"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Vehicle Number :</th>
						<td><form:input path="vehicleNumber"
								pattern="^[A-Z]{2}[0-9]{2}[A-HJ-NP-Z]{1,2}[0-9]{4}$"
								title="Vehicle number must be in TN12AB1234 format" /></td>
					</tr>
					<tr>
						<th scope="col">Number of passengers :</th>
						<td><input type="number" id="numberOfPassengers"
							name="numberOfPassengers" min="1"
							title="Select the number of passengers" required /></td>
					</tr>
					<tr>
						<td><form:hidden path="appliedDate" name="appliedDate" value="<%=Logic.getInstanceDate()%>" /></td>
					</tr>
					<tr>
						<form:hidden path="approvalStatus" value="Processing" />
					</tr>
					<tr>
						<form:hidden path="adminId" value="admin01" />
					</tr>
					<tr>
						<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>