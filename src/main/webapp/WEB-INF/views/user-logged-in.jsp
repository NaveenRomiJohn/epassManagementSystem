<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User In</title>
<style>
* {
	text-align: center;
}
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
	<h2>User Page</h2>
	<br>
	<a href="epassformtype">Epass Request</a>
	<br>
	<a href="updateuserform">Update User details</a>
	<br>
	<br>
	<h3>Check application status by EpassId</h3>
	<br>
	<div id="form">
		<form action="epassapplicationstatus" method="get">
			<div>
				Epass Id :
				<input type="text" id="epassId" name="epassId" />
			</div><input type="submit" value="Get Status">
		</form>
	</div>
</body>
</html>