<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Outside State</title>
<style>
<%@include file="css/form.css" %>
<%@include file="css/navbar.css" %>
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
			<h2>Epass Registration Form</h2>
			<h3>Outside State</h3>
			<form:form action="epassformoutsidestateregistered" method="post"
				modelAttribute="epassoutsidestate">
				<table class="center">
					<caption></caption>
					<tr>
						<td><form:hidden path="userId" value="${userId}" /></td>
					</tr>
					<tr>
						<th scope="col">Travel Reason :</th>
						<td><div class="custom-select" style="width: 108%;">
								<form:select path="travelReason" required="true">
									<form:option value="Medical Emergency"
										label="Medical Emergency" />
									<form:option value="Marriage" label="Marriage" />
									<form:option value="Death" label="Death" />
									<form:option value="On Going Government Work"
										label="On Going Government Work" />
								</form:select>
							</div></td>
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
						<td><form:hidden path="applicationType" value="Outside State" /></td>
					</tr>
					<tr>
						<th scope="col">From Address :</th>
						<td><form:textarea path="fromAddress"
								placeholder="Please enter the from address"
								title="Address should atleast contain 10 characters"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Destination Address :</th>
						<td><form:textarea path="destinationAddress"
								placeholder="Please enter the destination address"
								title="Address should atleast contain 10 characters"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Vehicle Number :</th>
						<td><form:input path="vehicleNumber"
								pattern="^[a-zA-Z]{2}[0-9]{2}[a-hA-Hj-nJ-Np-zP-Z]{1,2}[0-9]{4}$"
								placeholder="Please enter the vehicle number"
								title="Vehicle number must be in TN12AB1234 format"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Number of passengers :</th>
						<td><input type="number" id="numberOfPassengers"
							name="numberOfPassengers" min="1" max="10"
							placeholder="Please select the number of passengers"
							title="Select the number of passengers" required /></td>
					</tr>
					<tr>
						<form:hidden path="approvalStatus" value="Processing" />
					</tr>
					<tr>
						<form:hidden path="adminId" value="admin01" />
					</tr>
					<table class="center"><caption></caption>
						<tr><th></th>
							<td><button type="reset" class="cancelbtn">Reset</button>
								<button type="submit" class="signupbtn">Submit</button></td>
						</tr>
					</table>
				</table>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
		
	<%@include file="js/select.js" %>
		
	</script>
</body>
</html>