<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.sql.*, com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Outside State Details</title>
<style>
<%@include file="form.css" %>
<%@include file="navbar.css" %>
label {
    display: block;
    font: 1rem 'Fira Sans', sans-serif;
}

input,
label {
    margin: .4rem 0;
}
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li><a class="active" href="epassformtype">EpassForm</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div style="padding: 0 16px;">
	<h2>Epass Registration Form</h2>
	<h3>Outside State Details</h3>
	<div id="outsidestateform">
		<form:form action="outsidestatedetailsregistered" method="post"
			modelAttribute="outsidestatedetails">
			<table class="center"><caption></caption>
			<tr>
				<form:hidden path="epassId" value="${epassId}" />
			</tr>
			<tr>
				<th scope="col">From State :</th>
				<td><form:select path="fromState">
					<form:option value="SelectState" />Select State
                        <form:option value="Andra Pradesh"
						label="Andra Pradesh" />
					<form:option value="Arunachal Pradesh" label="Arunachal Pradesh" />
					<form:option value="Assam" label="Assam" />
					<form:option value="Bihar" label="Bihar" />
					<form:option value="Chhattisgarh" label="Chhattisgarh" />
					<form:option value="Goa" label="Goa" />
					<form:option value="Gujarat" label="Gujarat" />
					<form:option value="Haryana" label="Haryana" />
					<form:option value="Himachal Pradesh" label="Himachal Pradesh" />
					<form:option value="Jammu and Kashmir" label="Jammu and Kashmir" />
					<form:option value="Jharkhand" label="Jharkhand" />
					<form:option value="Karnataka" label="Karnataka" />
					<form:option value="Kerala" label="Kerala" />
					<form:option value="Madya Pradesh" label="Madya Pradesh" />
					<form:option value="Maharashtra" label="Maharashtra" />
					<form:option value="Manipur" label="Manipur" />
					<form:option value="Meghalaya" label="Meghalaya" />
					<form:option value="Mizoram" label="Mizoram" />
					<form:option value="Nagaland" label="Nagaland" />
					<form:option value="Orissa" label="Orissa" />
					<form:option value="Punjab" label="Punjab" />
					<form:option value="Rajasthan" label="Rajasthan" />
					<form:option value="Sikkim" label="Sikkim" />
					<form:option value="Tamil Nadu" label="Tamil Nadu" />
					<form:option value="Telangana" label="Telangana" />
					<form:option value="Tripura" label="Tripura" />
					<form:option value="Uttaranchal" label="Uttaranchal" />
					<form:option value="Uttar Pradesh" label="Uttar Pradesh" />
					<form:option value="West Bengal" label="West Bengal" />
					<form:option value="Andaman and Nicobar Islands"
						label="Andaman and Nicobar Islands" />
					<form:option value="Chandigarh" label="Chandigarh" />
					<form:option value="Dadar and Nagar Haveli"
						label="Dadar and Nagar Haveli" />
					<form:option value="Daman and Diu" label="Daman and Diu" />
					<form:option value="Delhi" label="Delhi" />
					<form:option value="Lakshadeep" label="Lakshadeep" />
					<form:option value="Pondicherry" label="Pondicherry" />
				</form:select></td>
			</tr>
			<tr>
				<th scope="col">To State :</th>
				<td><form:select path="toState">
					<form:option value="SelectState" />Select State
                        <form:option value="Andra Pradesh"
						label="Andra Pradesh" />
					<form:option value="Arunachal Pradesh" label="Arunachal Pradesh" />
					<form:option value="Assam" label="Assam" />
					<form:option value="Bihar" label="Bihar" />
					<form:option value="Chhattisgarh" label="Chhattisgarh" />
					<form:option value="Goa" label="Goa" />
					<form:option value="Gujarat" label="Gujarat" />
					<form:option value="Haryana" label="Haryana" />
					<form:option value="Himachal Pradesh" label="Himachal Pradesh" />
					<form:option value="Jammu and Kashmir" label="Jammu and Kashmir" />
					<form:option value="Jharkhand" label="Jharkhand" />
					<form:option value="Karnataka" label="Karnataka" />
					<form:option value="Kerala" label="Kerala" />
					<form:option value="Madya Pradesh" label="Madya Pradesh" />
					<form:option value="Maharashtra" label="Maharashtra" />
					<form:option value="Manipur" label="Manipur" />
					<form:option value="Meghalaya" label="Meghalaya" />
					<form:option value="Mizoram" label="Mizoram" />
					<form:option value="Nagaland" label="Nagaland" />
					<form:option value="Orissa" label="Orissa" />
					<form:option value="Punjab" label="Punjab" />
					<form:option value="Rajasthan" label="Rajasthan" />
					<form:option value="Sikkim" label="Sikkim" />
					<form:option value="Tamil Nadu" label="Tamil Nadu" />
					<form:option value="Telangana" label="Telangana" />
					<form:option value="Tripura" label="Tripura" />
					<form:option value="Uttaranchal" label="Uttaranchal" />
					<form:option value="Uttar Pradesh" label="Uttar Pradesh" />
					<form:option value="West Bengal" label="West Bengal" />
					<form:option value="Andaman and Nicobar Islands"
						label="Andaman and Nicobar Islands" />
					<form:option value="Chandigarh" label="Chandigarh" />
					<form:option value="Dadar and Nagar Haveli"
						label="Dadar and Nagar Haveli" />
					<form:option value="Daman and Diu" label="Daman and Diu" />
					<form:option value="Delhi" label="Delhi" />
					<form:option value="Lakshadeep" label="Lakshadeep" />
					<form:option value="Pondicherry" label="Pondicherry" />
				</form:select></td>
			</tr>
			<tr>
				<th scope="col">Quarantine From date :</th>
				<td><input  id="quarantineFromDate" name="quarantineFromDate" type="date" max="<%=Logic.getInstanceDate()%>" required /></td>
			</tr>
			<tr>
				<th scope="col">Quarantine To date :</th>
				<td><input  id="quarantineToDate" name="quarantineToDate" type="date" max="<%=Logic.getInstanceDate()%>" required /></td>
			</tr>
			<tr>
				<th scope="col">Quarantine Location :</th>
				<td><form:input path="quarantineLocation" /></td>
			</tr>
			<tr>
				<th scope="col">PCR Result Certificate Date :</th>
				<td><form:input path="pcrResultCertificateDate" type="date" max="<%=Logic.getInstanceDate()%>" /><td>
			</tr>
			<tr>
				<th scope="col">PCR Result Certificate Number :</th>
				<td><form:input path="pcrResultCertificateNumber" /></td>
			</tr>
			<tr>
				<th scope="col">PCR Certificate Issued by:</th>
				<td><form:input path="pcrCertificateIssuedBy" /></td>
			</tr>
			<tr>
			 <td><label for="rtPcrFile">Choose a file:</label></td>
			 <td><input type="file" id="rtPcrFile" name="rtPcrFile"></td>
			 </tr>
			<tr>
				<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
			</tr>
			</table>
		</form:form>
	</div>
	</div>
</body>
</html>