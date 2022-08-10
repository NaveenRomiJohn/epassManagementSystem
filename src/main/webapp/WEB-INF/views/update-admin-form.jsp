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
* {
  background-image: url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 3000px 2000px;
}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Update Admin Details</h3>
	<div id="root">
		<div id="form">
			<form:form action="updateadmin" method="post" modelAttribute="updateAdmin">
				
				<div>
				AdminId :<form:input path="adminId" />
				</div>
				<br>
				<div>
				Name : <form:input path="adminName" />
				</div>
				<br>
				<div>
				Email : <form:input path="adminEmail" />
				</div>
				<br>
				<div>
				Password : <form:password path="adminPassword"/>
				</div>
				<br>
				<div>
				Date Of Joining : <form:input path="dateOfJoining"/>
				</div>
				<br>
				<div>
				Designation : <form:input path="adminDesignation"/>
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