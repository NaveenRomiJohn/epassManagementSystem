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
*{text-align: center;}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Epass Registration form</h3>
	<div id="root">
		<div id="form">
			<form:form action="addepass" method="post" modelAttribute="addepass">
				
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
				<div>
				Application Type : <form:radiobutton path="application_type" value="Within District" />Within District
				<form:radiobutton path="application_type" value="Outside District" />Outside District
				<form:radiobutton path="application_type" value="Outside State" />Outside State
				</div>
				<br>
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