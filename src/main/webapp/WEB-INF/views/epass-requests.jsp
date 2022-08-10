<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Epass Requests</title>
<style type="text/css">
* {
  background-image: url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 3000px 2000px;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Epass Requests</h3>
	<div id="applist">
		<table>
			<thead>
				<tr>
					<th>Epass Id</th>
					<th>Applied Date</th>
					<th>Travel Reason</th>
					<th>From Date</th>
					<th>To Date</th>
					<th>From Address</th>
					<th>Destination Address</th>
					<th>Destination Address</th>
					<th>Vehicle Number</th>
					<th>Number Of passengers</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="epass" items="${epassrequests}">
					<tr>
						<td>${app.appointment_id}</td>
						<td>${app.appointment_date}</td>
						<td>${app.doctor_id}</td>
						<td>${app.patient_name}</td>
						<td>${app.fees_collected}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>