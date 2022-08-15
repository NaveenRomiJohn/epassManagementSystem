<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User In</title>
<style>
<%@include file="navbar.css"%>
<%@include file="user-dashboard.css"%>
</style>
</head>
<body>
	<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="userloggedin">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<div class="row">
		<div class="container">
						<div class="test_box box-01 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassformtype" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Epass Application Form</h1>
									</div>
								</a>
							</div>
						</div>
						<div class="test_box box-02 col-xs-6 col-md-4">
							<div class="inner">
								<a href="updateuserform" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">User Update</h1>
									</div>
								</a>
							</div>
						</div>
						<div class="test_box box-03 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassapplicationstatus" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">User Update</h1>
									</div>
								</a>
							</div>
						</div>
		</div>
	</div>

	<div style="padding: 0 16px;">
		<h2>User Page</h2>
		 <br> <br>
		<h3>Check application status by EpassId</h3>
		<br>
		<div id="form">
			<form action="epassapplicationstatus" method="get">
				<div>
					Epass Id : <input type="text" id="epassId" name="epassId" />
				</div>
				<input type="submit" value="Get Status">
			</form>
		</div>
	</div>
</body>
</html>