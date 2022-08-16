<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Across District</title>
<style>
<%@include file="css/navbar.css" %>
<%@include file="css/form.css" %>
</style>
</head>
<script>
	function validateform() {
		var fromDistrict = document.reg_form.fromDistrict.value;
		var toDistrict = document.reg_form.toDistrict.value;

		if (fromDistrict == toDistrict) {
			alert("From district and To district should not be same!");
			return false;
		} else {
			return true;
		}
	}
</script>
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
	<h3>Across District</h3>
			<form:form action="epassformacrossregistered" name="reg_form" method="post" 
			modelAttribute="epassacrossdistrict" onsubmit="return validateform()">
				 <div class="container">
				<table class="center"><caption></caption>
					<tr>
						<td><form:hidden path="userId" value="${userId}"/></td>
					</tr>
					<tr>
						<th scope="col">Travel Reason :</th>
						<td><form:select path="travelReason" required="true">
								<form:option value="" label="None" />
								<form:option value="Medical Emergency" label="Medical Emergency" />
								<form:option value="Marriage" label="Marriage" />
								<form:option value="Death" label="Death" />
								<form:option value="On Going Government Work"
									label="On Going Government Work" />
							</form:select></td>
					</tr>
					<tr>
						<th scope="col">From Date :</th>
						<td><input  id="fromDate" name="fromDate" type="date" min="<%=Logic.getInstanceDate()%>" required  />
						</td>
					</tr>
					<tr>
						<th scope="col">To Date :</th>
						<td><input  id="toDate" name="toDate" type="date" min="<%=Logic.getInstanceDate()%>" required />
						</td>
					</tr>
					<tr>
						<td><form:hidden path="applicationType"
								value="Across District" /></td>
					</tr>
					<tr>
						<th scope="col">From District :</th>
						<td><input type="text" id="fromDistrict" name="fromDistrict" placeholder="Please enter the from district"
								title="Name can't be empty or must contain only alphabets"
								pattern="^[a-zA-Z]+$" required /></td>
					</tr>
					<tr>
						<th scope="col">To District :</th>
						<td><input type="text" id="toDistrict" name="toDistrict" placeholder="Please enter the to district"
								title="Name can't be empty or must contain only alphabets"
								pattern="^[a-zA-Z]+$" required /></td>
					</tr>
					<tr>
						<th scope="col">From Address :</th>
						<td><form:textarea path="fromAddress"
								title="Address should atleast contain 10 characters" placeholder="Please enter the from address"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Destination Address :</th>
						<td><form:textarea path="destinationAddress"
								title="Address should atleast contain 10 characters" placeholder="Please enter the to address"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">Vehicle Number :</th>
						<td><form:input path="vehicleNumber"
								pattern="^[A-Z]{2}[0-9]{2}[A-HJ-NP-Z]{1,2}[0-9]{4}$" placeholder="Please enter the vehicle number"
								title="Vehicle number must be in TN12AB1234 format" required="true"/></td>
					</tr>
					<tr>
						<th scope="col">Number of passengers :</th>
						<td><input type="number" id="numberOfPassengers" name="numberOfPassengers" min="1" max="10"
					placeholder="Please select the number of passengers"	title="Select the number of passengers" required/></td>
					</tr>
					<tr>
						<form:hidden path="approvalStatus" value="Processing" />
					</tr>
					<tr>
						<form:hidden path="adminId" value="admin01" />
					</tr>
					<tr>
						<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
					</tr>
				</table>
				</div>
			</form:form>
		</div>
		</div>
</body>
</html>