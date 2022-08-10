<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Admin</title>
<style>
* {
	text-align: center;
}

* {
	background-image:
		url("https://www.waters.com/content/dam/waters/en/Photography/stock/health-and-medical/stock-covid-19-coronavirus.jpg/_jcr_content/renditions/original");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 3000px 2000px;
}
</style>
</head>
<script>
	function validateform() {
		var adminId = document.reg_form.adminId.value;
		if(adminId == null || adminId == "") {
			alert("Admin Id is required or can't be blank");
			return false;
		}
		</script>
<body>
	<h1>E-Pass Management System</h1>
	<h3>Delete Admin Details</h3>
	<form action="deleteadmin" name="reg_form" onsubmit="return validateform()">
		<div>
			AdminId : <input type="text" name="adminId" id="adminId"/>
		</div>
		<br> <input type="submit" value="Delete" />
	</form>
</body>
</html>