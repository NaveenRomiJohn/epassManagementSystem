<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.sql.*, com.chainsys.epassManagementSystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Outside State Details</title>
<style>
h1, h2, h3 {
	text-align: center;
}

th, td {
	border: 2px solid black;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
<%@include file="navbar.css" %>
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
	<h2>Epass Registration form</h2>
	<h3>Outside State Details</h3>
	<div id="outsidestateform">
		<form:form action="outsidestatedetailsregistered" method="post"
			modelAttribute="outsidestatedetails">
			<div>
				<form:hidden path="epassId" value="${epassId}" />
			</div>
			<br>
			<div>
				From State :
				<form:select path="fromState">
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
				</form:select>
			</div>
			<br>
			<div>
				To State :
				<form:select path="toState">
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
				</form:select>
			</div>
			<br>
			<div>
				Quarantine From date :
				<input  id="quarantineFromDate" name="quarantineFromDate" type="date" max="<%=Logic.getInstanceDate()%>" required />
			</div>
			<br>
			<div>
				Quarantine To date :
				<input  id="quarantineToDate" name="quarantineToDate" type="date" max="<%=Logic.getInstanceDate()%>" required />
			</div>
			<br>
			<div>
				Quarantine Location :
				<form:input path="quarantineLocation" />
			</div>
			<br>
			<div>
				PCR Result Certificate Date :
				<form:input path="pcrResultCertificateDate" type="date" />
			</div>
			<br>
			<div>
				PCR Result Certificate Number :
				<form:input path="pcrResultCertificateNumber" />
			</div>
			<br>
			<div>
				PCR Certificate Issued by:
				<form:input path="pcrCertificateIssuedBy" />
				<%-- <form:option value="Ghaziabad" label="Ghaziabad" />
						<form:option value="Modinagar" label="Modinagar" />
						<form:option value="Meerut" label="Meerut" />
						<form:option value="Amristar" label="Amristar" />
					</form:select> --%>
			</div>
			<br>
			<div>
			 select a file :<input type="file" id="rtPcrFile" name="rtPcrFile">
			 </div>
			<br>
			<div>
				<input type="submit" value="Submit" /> <input type="reset"
					value="Reset" />
			</div>
		</form:form>
	</div>
	</div>
</body>
</html>