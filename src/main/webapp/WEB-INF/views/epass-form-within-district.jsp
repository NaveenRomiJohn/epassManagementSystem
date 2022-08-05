<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.sql.*"%>
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
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h2>Epass Registration form</h2>
	<h3>Within District</h3>
	<div id="root">
		<div id="epassform">
			<form:form action="passengerswithindistrict" method="get"
				modelAttribute="epasswithindistrict">
				
				<div>
				User Id:
					<form:input path="userId"  />
				</div>
				<br>
				<div>
					EpassId :
					<form:input path="epassId" name="epassId" />
				</div>
				<br>
				<div>
					Travel Reason :
					<form:input path="travelReason" />
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
					<form:input path="appliedDate" type="date" />
				</div>
				<br>
				<div>
					<form:hidden path="approvalStatus" value="processing" />
				</div>
				<%-- <div>
					<form:hidden path="approvedDate" value= />
				</div> --%>
				<div>
					<form:hidden path="districtId" value="" />
				</div>
				<div>
					<form:hidden path="adminId" value="200" />
				</div>
				<div>
					<form:hidden path="applicationType" value="Within District" />
				</div>
				<br>
				<div>
					<input type="submit" value="Submit" /> <input type="reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>