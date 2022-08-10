<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Across District</title>
<style>
h1, h2, h3 {
	text-align: center;
}

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
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
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<div id="epassform">
	<h2>Epass Registration form</h2>
	<h3>Across District</h3>
		
			<form:form action="epassformacrossregistered" method="post"
				modelAttribute="epassacrossdistrict">
				<table>
					<tr>
						<td>User Id :</td>
						<td><form:input path="userId" required="true" /></td>
					</tr>
					<tr>
						<td>Travel Reason :</td>
						<td><form:select path="travelReason">
								<form:option value="-" label="--Please Select--" />
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
						<td><form:input path="fromDate" type="date" required="true" />
						</td>
					</tr>
					<tr>
						<td>To Date :</td>
						<td><form:input path="toDate" type="date" required="true" />
						</td>
					</tr>
					<tr>
						<td><form:hidden path="applicationType"
								value="Within District" /></td>
					</tr>
					<tr>
						<td>From District :</td>
						<td><form:input path="fromDistrict"
								title="Name can't be empty or must contain only alphabets"
								pattern="^[a-zA-Z]+$" required="true" /></td>
					</tr>
					<tr>
						<td>To District :</td>
						<td><form:input path="toDistrict"
								title="Name can't be empty or must contain only alphabets"
								pattern="^[a-zA-Z]+$" required="true" /></td>
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
						<td><form:input path="numberOfPassengers"
								name="numberOfPassengers" title="Select the number of passengers" required="true" /></td>
					</tr>
					<%-- <tr>
						<td>Applied Date :</td>
						<td><form:input path="appliedDate" type="date"
								required="true" /></td>
					</tr> --%>
					<tr>
						<form:hidden path="approvalStatus" value="processing" />
					</tr>
					<tr>
						<form:hidden path="adminId" value="200" />
					</tr>
					<tr>
						<td><form:button type="submit">Register</form:button> <form:button
								type="reset">Reset</form:button></td>
					</tr>
				</table>
			</form:form>
		</div>
</body>
</html>