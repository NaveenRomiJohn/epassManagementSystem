<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<body>
<div id="Table root"></div>
	<table>
		<thead>
			<tr>
				<th>Passenger Name</th>
				<th>Gender</th>
				<th>Date Of Birth</th>
				<th>Covid Symptoms</th>
				<th>Id Proof Type</th>
				<th>Id proof Number</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="passengers" items="${allpassengers}">
				<!-- var-variables,items-collection -->
				<tr>
					<td>${passengers.passengerName}</td>
					<td>${passengers.passengerGender}</td>
					<td>${passengers.dateOfBirth}</td>
					<td>${passengers.covidSymptoms}</td>
					<td>${passengers.idProofType}</td>
					<td>${passengers.idProofNumber}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>