<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All EPass Form</title>
<style>
* {
	text-align: center;
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
	<h2>All Epass List</h2>
	<br>
	<br>
	<div id="form">
		<form:form action="statuschanged" method="post"
			modelAttribute="epassstatus">
			<div>
				User Id:
				<form:input path="userId" />
			</div>
			<br>
			<div>
				EpassId :
				<form:input path="epassId" name="epassId" />
			</div>
			<br>
			<div>
				Travel Reason :
				<form:select path="travelReason">
					<form:option value="Medical Emergency" label="Medical Emergency" />
					<form:option value="Marriage" label="Marriage" />
					<form:option value="Death" label="Death" />
					<form:option value="On Going Government Work"
						label="On Going Government Work" />
					<form:option value="Hospital staff" label="Hospital staff" />
				</form:select>
			</div>
			<br>
			<div>
				From Date :
				<form:input path="fromDate" type="date" />
			</div>
			<br>
			<div>
				To Date :
				<form:input path="toDate" type="date" />
			</div>
			<br>
			<div>
				<form:hidden path="applicationType" value="Within District" />
			</div>
			<br>
			<div>
				From Address :
				<form:textarea path="fromAddress" cols="30" rows="3" />
			</div>
			<br>
			<div>
				Destination Address :
				<form:textarea path="destinationAddress" cols="30" rows="3" />
			</div>
			<br>
			<div>
				Vehicle Number :
				<form:input path="vehicleNumber" />
			</div>
			<br>
			<div>
				Number of passengers :
				<form:input path="numberOfPassengers" name="numberOfPassengers" />
			</div>
			<br>
			<div>
				Applied Date :
				<form:input path="appliedDate" type="date" />
			</div>
			<br>
			<div>
				Approved Date :
				<form:input path="appliedDate" type="date" />
			</div>
			<br>
			<div>
			Approval Status :
				<form:input path="approvalStatus" value="processing" />
			</div>
			<div>
				<form:hidden path="adminId" value="200" />
			</div>
			<br>
			<div>
				<input type="submit" value="Submit" /> <input type="reset">
			</div>
		</form:form>
	</div>
</body>
</html>