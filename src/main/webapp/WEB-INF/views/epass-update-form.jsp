<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>EPass Update Form</title>
<style type="text/css">
  <%@include file="css/form.css" %>
  <%@include file="css/navbar.css"%>
  <%@include file="css/dropdown.css"%>
  <%@include file="css/passenger.css" %> 
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="/home/index">Home</a></li>
		<div class="dropdown">
        <button class="dropbtn">Admin 
     	 <em class="fa fa-caret-down"></em> </button>
    	<div class="dropdown-content">
    	  	<a href="/admin/allusers">Users</a>
     	 	<a href="/admin/epassprocessingstatus">Epass Requests</a>
      		<a href="/admin/epassapprovedlist">Epass Approved</a>
      		<a href="/admin/epassrejectedlist">Epass Rejected</a>
      		<a href="/admin/epassrequests">Epass Details</a>
    	</div>
    	</div>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<div style="padding: 0 16px;">
	<div id="form">
	<h2>Epass Update</h2>
		<form:form action="statuschanged" method="post"
			modelAttribute="epassstatus">
			<table id="passenger" class="center"><caption></caption>
				<tr>
					<td><form:hidden path="epassId" value="${epassId}"
							readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Travel Reason :</th>
					<td><form:input path="travelReason" readonly="true"/></td>
				</tr>
				<tr>
					<th scope="col">From Date :</th>
					<td><form:input path="fromDate" type="date" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">To Date :</th>
					<td><form:input path="toDate" type="date" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Application Type :</th>
					<td><form:input path="applicationType" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">District :</th>
					<td><form:input path="fromDistrict" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">From Address :</th>
					<td><form:textarea path="fromAddress" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Destination Address :</th>
					<td><form:textarea path="destinationAddress" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Vehicle Number :</th>
					<td><form:input path="vehicleNumber" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Number of passengers :</th>
					<td><form:input path="numberOfPassengers"
							name="numberOfPassengers" readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Approval Status :</th>
					<td><div class="custom-select" style="width:108%;" ><form:select path="approvalStatus">
							<form:option value="Processing" label="Processing" />
							<form:option value="Approved" label="Approved" />
							<form:option value="Rejected" label="Rejected" />
						</form:select></div></td>
				</tr>
				<tr>
						<form:hidden path="adminId" value="admin01" />
				</tr>
				<tr>
						<td><form:hidden path="approvedDate" name="approvedDate" value="<%=Logic.getInstanceDate()%>" /></td>
				</tr>
				<tr>
					<th scope="col">Reason :</th>
					<td><form:input path="reason" name="reason" 
					placeholder="Please enter the reason" required="true"/></td>
				</tr>
				<table class="center"><caption></caption>
				<tr><th></th>
					<td><form:button type="submit" class="signupbtn">Update</form:button></td>
					</tr>
				</table>
			</table>
		</form:form>
	</div>
	</div>
	<br>
	<div id="alter" class="center">
		<table><caption></caption>
			<thead>
				<tr>
					<th>Passenger Name</th>
					<th>Gender</th>
					<th>Covid Symptoms</th>
					<th>Id Proof Type</th>
					<th>Id proof Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="passengers" items="${getpassengers}">
					<!-- var-variables,items-collection -->
					<tr>
						<td>${passengers.passengerName}</td>
						<td>${passengers.passengerGender}</td>
						<td>${passengers.covidSymptoms}</td>
						<td>${passengers.idProofType}</td>
						<td>${passengers.idProofNumber}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<script type="text/javascript">
<%@include file="js/select.js" %>
</script>
</body>
</html>