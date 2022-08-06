<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Across Districts</title>
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
	<h3>Across District</h3>
	<div id="epassform">
		<form:form action="registeracrossdistrict" method="get"
			modelAttribute="epassacrossdistrict">
			<div>
				User Id:
				<form:input path="userId" />
			</div>
			<br>
			<div>
				EpassId :
				<form:input path="epassId" name="epassId" />
			</div>
			<br>
			<div>
				Travel Reason :
				<form:select path="travelReason">
					<form:option value="Medical Emergency" label="Medical Emergency" />
					<form:option value="Marriage" label="Marriage" />
					<form:option value="Death" label="Death" />
					<form:option value="On Going Government Work"
						label="On Going Government Work" />
					<form:option value="Hospital staff" label="Hospital staff" />
				</form:select>
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
				<form:hidden path="applicationType" value="Across District" />
			</div>
			<br>
			<div>
				From District :
				<form:input path="fromDistrict" />
			</div>
			<br>
			<div>
				To District :
				<form:input path="toDistrict" />
			</div>
			<br>
			<div>
				From Address :
				<form:textarea path="fromAddress" cols="20" rows="2" />
			</div>
			<br>
			<div>
				Destination Address :
				<form:textarea path="destinationAddress" cols="20" rows="2" />
			</div>
			<br>
			<div>
				Vehicle Number :
				<form:input path="vehicleNumber" />
			</div>
			<br>
			<div>
				Number of passengers :
				<form:input path="numberOfPassengers" name="numberOfPassengers" />
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
			<div>
				<form:hidden path="adminId" value="200" />
			</div>
			<br>

			<div id="passengerform">
				<form:form modelAttribute="passengersacrossdistrict">
					<div>
						Passenger Name :
						<form:input path="passengerName" />
					</div>
					<br>
					<div>
						Gender :
						<form:radiobutton path="passengerGender" value="Male" />
						Male
						<form:radiobutton path="passengerGender" value="Female" />
						Female
					</div>
					<br>
					<div>
						Date of Birth :
						<form:input path="dateOfBirth" type="date" />
					</div>
					<br>
					<div>
						Id Proof Type :
						<form:select path="idProofType">
							<form:option value="Aadhar Card" label="Aadhar Card" />
							<form:option value="Driving License" label="Driving License" />
							<form:option value="Ration Card" label="Ration Card" />
						</form:select>
					</div>
					<br>
					<div>
						Id Proof Number :
						<form:input path="idProofNumber" />
					</div>
					<br>
					<div>
						Covid Symptoms :
						<form:radiobutton path="covidSymptoms" value="Yes" />
						Yes
						<form:radiobutton path="covidSymptoms" value="No" />
						No
					</div>
				</form:form>
				<div>
					<input type="submit" value="Submit" /> <input type="reset">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>