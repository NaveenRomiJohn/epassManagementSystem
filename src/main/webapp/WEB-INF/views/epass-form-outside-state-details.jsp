<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page
	import="java.io.*,java.util.*, javax.servlet.*,java.sql.*, com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Outside State Details</title>
<style>
<%@include file="css/form.css" %>
<%@include file="css/navbar.css" %>
</style>
</head>
<script>
	function validateform() {
		var fromState = document.reg_form.fromState.value;
		var toState = document.reg_form.toState.value;

		if (fromState == toState) {
			alert("From state and To state should not be same!");
			return false;
		} else {
			return true;
		}
	}
</script>
<body>
	<ul class="topnav">
		<li><a href="/home/index">Home</a></li>
		<li><a href="/home/userloggedin?userId=${userId}">User</a></li>
		<li><a class="active" href="/epass/epassformtype?userId=${userId}">EpassForm</a></li>
		<li class="right"><a href="">User : ${userId}</a></li>
	</ul>

	<div style="padding: 0 16px;">
		<h2>Epass Registration Form</h2>
		<h3>Outside State Details</h3>
		<div id="outsidestateform">
			<form:form action="/epass/epassoutsidestate" name="reg_form" method="post"
				modelAttribute="outsidestatedetails"
				onsubmit="return validateform()">
				<table class="center">
					<caption></caption>
					<tr>
						<form:hidden path="epassId" value="${epassId}" />
					</tr>
					<tr>
						<th scope="col">From State :</th>
						<td><div class="custom-select" style="width: 108%;">
								<form:select path="fromState" name="fromState" required="true">
									<form:option value="Andra Pradesh" label="Andra Pradesh" />
									<form:option value="Arunachal Pradesh"
										label="Arunachal Pradesh" />
									<form:option value="Assam" label="Assam" />
									<form:option value="Bihar" label="Bihar" />
									<form:option value="Chhattisgarh" label="Chhattisgarh" />
									<form:option value="Goa" label="Goa" />
									<form:option value="Gujarat" label="Gujarat" />
									<form:option value="Haryana" label="Haryana" />
									<form:option value="Himachal Pradesh" label="Himachal Pradesh" />
									<form:option value="Jammu and Kashmir"
										label="Jammu and Kashmir" />
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
							</div></td>
					</tr>
					<tr>
						<th scope="col">To State :</th>
						<td><div class="custom-select" style="width: 108%;">
								<form:select path="toState" name="toState" required="true">
									<form:option value="Andra Pradesh" label="Andra Pradesh" />
									<form:option value="Arunachal Pradesh"
										label="Arunachal Pradesh" />
									<form:option value="Assam" label="Assam" />
									<form:option value="Bihar" label="Bihar" />
									<form:option value="Chhattisgarh" label="Chhattisgarh" />
									<form:option value="Goa" label="Goa" />
									<form:option value="Gujarat" label="Gujarat" />
									<form:option value="Haryana" label="Haryana" />
									<form:option value="Himachal Pradesh" label="Himachal Pradesh" />
									<form:option value="Jammu and Kashmir"
										label="Jammu and Kashmir" />
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
							</div></td>
					</tr>
					<tr>
						<th scope="col">Quarantine From date :</th>
						<td><input id="quarantineFromDate" name="quarantineFromDate"
							type="date" max="<%=Logic.getInstanceDate()%>" required /></td>
					</tr>
					<tr>
						<th scope="col">Quarantine To date :</th>
						<td><input id="quarantineToDate" name="quarantineToDate"
							type="date" max="<%=Logic.getInstanceDate()%>" required /></td>
					</tr>
					<tr>
						<th scope="col">Quarantine Location :</th>
						<td><form:input path="quarantineLocation"
								title="Location should atleast contain 10 characters"
								placeholder="Please enter the quarantine location"
								required="true" /></td>
					</tr>
					<tr>
						<th scope="col">PCR Result Certificate Date :</th>
						<td><form:input path="pcrResultCertificateDate" type="date"
								max="<%=Logic.getInstanceDate()%>" />
						<td>
					</tr>
					<tr>
						<th scope="col">PCR Result Certificate Number :</th>
						<td><input type="text" id="pcrResultCertificateNumber"
							name="pcrResultCertificateNumber" pattern="[1-9]{1}[0-9]{5,9}"
							title="Phone number should have atleast 10 digits" required /></td>
					</tr>
					<tr>
						<th scope="col">PCR Certificate Issued by:</th>
						<td><input type="text" id="pcrCertificateIssuedBy"
							name="pcrCertificateIssuedBy"
							placeholder="Please enter the details of certificate issued"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" required /></td>
					</tr>
					<table class="center"><caption></caption>
						<tr><th></th>
							<td><button type="reset" class="cancelbtn">Reset</button>
								<button type="submit" class="signupbtn">Submit</button></td>
						</tr>
					</table>
				</table>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
		
	<%@include file="js/select.js" %>
		
	</script>
</body>
</html>