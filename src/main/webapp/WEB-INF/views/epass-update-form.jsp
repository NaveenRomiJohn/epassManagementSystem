<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All EPass Form</title>
<style>
* {
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

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<br>
	<h2>All Epass List</h2>
	<div id="form">
		<form:form action="statuschanged" method="post"
			modelAttribute="epassstatus">
			<table>
				<tr>
					<td>Travel Reason :</td>
					<td><form:select path="travelReason" readonly="true">
							<form:option value="Medical Emergency" label="Medical Emergency" readonly="true"/>
							<form:option value="Marriage" label="Marriage" readonly="true"/>
							<form:option value="Death" label="Death" readonly="true"/>
							<form:option value="On Going Government Work"
								label="On Going Government Work" readonly="true"/>
						</form:select></td>
				</tr>
				<tr>
					<td>From Date :</td>
					<td><form:input path="fromDate" type="date" readonly="true" /></td>
				</tr>
				<tr>
					<td>To Date :</td>
					<td><form:input path="toDate" type="date" readonly="true" /></td>
				</tr>
				<tr>
					<td>Application Type :</td>
					<td><form:input path="applicationType" readonly="true" /></td>
				</tr>
				<tr>
					<td>District :</td>
					<td><form:input path="fromDistrict" readonly="true" /></td>
				</tr>
				<tr>
					<td>From Address :</td>
					<td><form:textarea path="fromAddress" readonly="true" /></td>
				</tr>
				<tr>
					<td>Destination Address :</td>
					<td><form:textarea path="destinationAddress" readonly="true" /></td>
				</tr>
				<tr>
					<td>Vehicle Number :</td>
					<td><form:input path="vehicleNumber" readonly="true" /></td>
				</tr>
				<tr>
					<td>Number of passengers :</td>
					<td><form:input path="numberOfPassengers"
							name="numberOfPassengers" readonly="true" /></td>
				</tr>
				<tr>
					<td>Approval Status :</td>
					<td><form:select path="approvalStatus">
							<form:option value="processing" label="processing" />
							<form:option value="Approved" label="Approved" />
							<form:option value="Rejected" label="Rejected" />
						</form:select></td>
				</tr>
				<tr>
					<td><form:button type="submit">Update</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>