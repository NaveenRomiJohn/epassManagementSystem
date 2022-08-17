<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>EPass Update Form</title>
<style type="text/css">
  <%@include file="css/form.css" %>
  <%@include file="css/navbar.css"%>
  <%@include file="css/dropdown.css"%>
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<div class="dropdown">
        <button class="dropbtn">Admin 
     	 <em class="fa fa-caret-down"></em> </button>
    	<div class="dropdown-content">
    	  	<a href="allusers">Users</a>
     	 	<a href="epassprocessingstatus">Epass Requests</a>
      		<a href="epassapprovedlist">Epass Approved</a>
      		<a href="epassrejectedlist">Epass Rejected</a>
      		<a href="epassrequests">Epass Details</a>
    	</div>
    	</div>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<h2>Epass Update</h2>
	<div id="form">
		<form:form action="statuschanged" method="post"
			modelAttribute="epassstatus">
			<table id="alter" class="center"><caption></caption>
				<tr>
					<td><form:hidden path="epassId" value="${epassId}"
							readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Travel Reason :</th>
					<td><div class="custom-select" style="width:108%;" >
					<form:select path="travelReason" readonly="true">
							<form:option value="Medical Emergency" label="Medical Emergency"/>
							<form:option value="Marriage" label="Marriage"/>
							<form:option value="Death" label="Death"/>
							<form:option value="On Going Government Work"
								label="On Going Government Work"/>
						</form:select></div></td>
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
				<tr>
					<td><form:button type="submit">Update</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
<script type="text/javascript">
<%@include file="js/select.js" %>
</script>
</body>
</html>