<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.epassmanagementsystem.businesslogic.Logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
<%@include file="css/form.css" %>
<%@include file="css/navbar.css" %>
 <%@include file="css/passenger.css" %> 
</style>
</head>
<body>
<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloggedin?userId=${userId}">User</a></li>
		<li><a class="active" href="epassformtype?userId=${userId}">EpassForm</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div style="padding: 0 16px;">
	<div id="passengerform">
		<h2>Epass Registration Form</h2>
		<h3>Epass Passengers</h3>
		<form:form action="epassregistered" method="post"
			modelAttribute="epasspassengers">
			<table id="passenger" class="center"><caption></caption>
				<tr>
					<th scope="col">Your Epass Id:</th>
					<td><form:input path="epassId" value="${epassId}"
							readonly="true" /></td>
				</tr>
				<tr>
					<th scope="col">Passenger Name :</th>
					<td><form:input path="passengerName" title="Name can't be empty or must contain only alphabets" 
					placeholder="Please enter the name"
							pattern="^[a-zA-Z]+$" required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Gender :</th>
					<td>
					<form:radiobutton path="passengerGender" name="gender"
							value="Male" required="true" /> Male <form:radiobutton
							path="passengerGender" name="gender" value="Female"
							required="true" /> Female <form:radiobutton
							path="passengerGender" name="gender" value="Others"
							required="true" /> Others</td>
				</tr>
				<tr>
					<th scope="col">Id Proof Type :</th>
					<td><div class="custom-select" style="width:108%;"><form:select path="idProofType">
							<form:option value="Aadhar Card" label="Aadhar Card"
								required="true" />
						</form:select></div></td>
				</tr>
				<tr>
					<th scope="col">Id Proof Number :</th>
					<td><form:input path="idProofNumber"
							pattern="^[1-9]{4}[-]{1}[0-9]{4}[-]{1}[0-9]{4}$" placeholder="Please enter your aadhar number" title="Adhaar must be 12 digit number"
							required="true" /></td>
				</tr>
				<tr>
					<th scope="col">Covid Symptoms :</th>
					<td><form:radiobutton path="covidSymptoms" value="Yes"
							required="true" /> Yes <form:radiobutton path="covidSymptoms"
							value="No" required="true" /> No</td>
				</tr>
				<table  class="center">
				<tr>
					<td><button type="reset" class="cancelbtn">Reset</button>
					 <button type="submit" class="signupbtn">Submit</button></td>
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
				<c:forEach var="passengers" items="${passengersList}">
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
	<table class="center"><caption></caption>
	<tr>
	<td><a href="/getResult"><button class="signupbtn">Register</button></a></td>
	</tr>
	</table>
<script type="text/javascript">
<%@include file="js/select.js" %>
</script>
</body>
</html>