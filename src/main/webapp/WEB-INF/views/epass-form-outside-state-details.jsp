<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
}

* {
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
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
				<form:input path="quarantineFromDate" type="date" />
			</div>
			<br>
			<div>
				Quarantine To date :
				<form:input path="quarantineToDate" type="date" />
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
				<input type="submit" value="Submit" /> <input type="reset"
					value="Reset" />
			</div>
		</form:form>
	</div>
</body>
</html>