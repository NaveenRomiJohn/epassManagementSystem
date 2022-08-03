<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin form</title>
<style>
table
{ 
margin-left: auto;
margin-right: auto;
}
h1,h3{
	text-align: center;
}
</style>
</head>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Admin Registration form</h3>
	<div id="root">
		<div id="form">
			<form:form action="addadmin" method="post" modelAttribute="addAdmin">
				<table>
					<tr>
						<td><form:label path="adminId">AdminId: </form:label></td>
						<td><form:input path="adminId" /></td>
					</tr>
					<tr>
						<td><form:label path="adminName">Name: </form:label></td>
						<td><form:input path="adminName" />
					</tr>
					<tr>
						<td><form:label path="adminEmail">Email: </form:label></td>
						<td><form:input type="email" path="adminEmail" /></td>
					</tr>
					<tr>
						<td><form:label path="adminPassword">Password: </form:label></td>
						<td><form:password path="adminPassword" /></td>
					</tr>
					<tr>
						<td><form:label path="dateOfJoining">Date of Joining: </form:label></td>
						<td><form:input type="date" path="dateOfJoining" />
					</tr>
					<tr>
						<td><form:label path="adminDesignation">Designation: </form:label></td>
						<td><form:input path="adminDesignation" />
					</tr>
					<tr>
					<td><input type="submit" value="Add Admin" />
						<input type="reset"></td>
						</tr>
				</table>
			</form:form>
			
		</div>
	</div>
</body>
</html>