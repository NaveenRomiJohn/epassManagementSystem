<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
h1, h2, h3 {
	text-align: center;
}
table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Epass Registration form</h3>
	<h2>Within District</h2>
	<div id="root">
		<div id="epassform">
			<form:form action="registerwithindistrict" method="post"
				modelAttribute="addepass">
				<div>
					EpassId :
					<form:input path="epassId" />
				</div>
				<br>
				<div>
					Travel Reason :
					<form:input path="travelReason" />
				</div>
				<br>
				<div>
					From Date :
					<form:input path="fromDate" />
				</div>
				<br>
				<div>
					To Date :
					<form:input path="toDate" />
				</div>
				<br>
				<div>
					From Address :
					<form:textarea path="fromAddress" cols="50" rows="4" />
				</div>
				<br>
				<div>
					Destination Address :
					<form:textarea path="destinationAddress" cols="50" rows="4" />
				</div>
				<br>
				<div>
					Vehicle Number :
					<form:input path="vehicleNumber" />
				</div>
				<br>
				<div>
					Number of passengers :
					<form:input path="numberOfPassengers" />
				</div>
				<br>
				<div>
					Applied Date :
					<form:input path="appliedDate" />
				</div>
			</form:form>
		</div>
		
</body>
</html>