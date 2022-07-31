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
			<form:form action="addadmin" method="post" modelAttribute="addadmin">
				<table>
					<tr>
						<td><form:label path="admin_id">AdminId: </form:label></td>
						<td><form:input path="admin_id" /> <form:errors path="admin_id"
								cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td><form:label path="admin_name">Name: </form:label></td>
						<td><form:input path="admin_name" />
					</tr>
					<tr>
						<td><form:label path="admin_email">Email: </form:label></td>
						<td><form:input type="email" path="admin_email" /></td>
					</tr>
					<tr>
						<td><form:label path="admin_password">Password: </form:label></td>
						<td><form:password path="admin_password" /> <form:errors
								path="admin_password" cssStyle="color:red" /></td>
					</tr>
					<tr>
						<td><form:label path="date_of_joining">Date of Joining: </form:label></td>
						<td><form:input type="date" path="date_of_joining" />
					</tr>
					<tr>
						<td><form:label path="admin_designation">Designation: </form:label></td>
						<td><form:input path="admin_designation" />
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