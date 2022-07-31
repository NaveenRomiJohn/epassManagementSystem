<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin form</title>
<style>
*{text-align: center;}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Update Admin Details</h3>
	<div id="root">
		<div id="form">
			<form:form action="updateadmin" method="post" modelAttribute="updateadmin">
				
				<div>
				AdminId :<form:input path="admin_id" />
				</div>
				<br>
				<div>
				Name : <form:input path="admin_name" />
				</div>
				<br>
				<div>
				Email : <form:input path="admin_email" />
				</div>
				<br>
				<div>
				Password : <form:password path="admin_password"/>
				</div>
				<br>
				<div>
				Date Of Joining : <form:input path="date_of_joining"/>
				</div>
				<br>
				<div>
				Designation : <form:input path="admin_designation"/>
				</div>
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