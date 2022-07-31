<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
h1,h2,h3{text-align: center;}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Epass Registration form</h3>
	<h2>Within District</h2>
	<div id="root">
		<div id="form">
			<form:form action="registerwithindistrict" method="post" modelAttribute="epasswithindistrict">
				
				<div>
				EpassId :<form:input path="epass_id" />
				</div>
				<br>
				<div>
				Travel Reason : <form:input path="travel_reason" />
				</div>
				<br>
				<div>
				From Date : <form:input path="from_date" />
				</div>
				<br>
				<div>
				To Date : <form:input path="to_date" />
				</div>
				<br>
				<div>
				From Address : <form:textarea path="from_address" cols="50" rows="4" />
				</div>
				<br>
				<div>
				Destination Address : <form:textarea path="destination_address" cols="50" rows="4" />
				</div>
				<br>
				<div>
				Vehicle Number : <form:input path="vehicle_number" />
				</div>
				<br>
				<div>
				Number of passengers : <form:input path="number_of_passengers" />
				</div>
				<br>
				<div>
				Applied Date : <form:input path="applied_date" />
				</div>
				<br>
				<%-- <div>
				Passenger Name : <form:input path="passenger_name" />
				</div>
				<br>
                <div>
                Gender : <form:radiobutton path="passenger_gender" value="Male" />Male
                         <form:radiobutton path="passenger_gender" value="Female" />Female
                </div>
				<br>
				<div>
				Date of Birth : <form:input path="date_of_birth" />
				</div>
				<br>
				<div>
				Id Proof Type : <form:radiobutton path="id_proof_type" value="Aadhar" />Aadhar Card
				<form:radiobutton path="id_proof_type" value="Driving License" />Driving License
				<form:radiobutton path="id_proof_type" value="Ration Card" />Ration Card
				</div>
				<br>
				<div>
				Id Proof Number : <form:input path="id_proof_number" />
				</div>
				<br>
				<div>
				Covid Symptoms : <form:radiobutton path="covid_symptoms" value="Yes" />Yes
				<form:radiobutton path="covid_symptoms" value="No" />No
				</div> --%>
				<br>
				<div>
				<input type="submit" value="Submit" />
				<input type="reset">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>