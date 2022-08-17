<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User In</title>
<style>
<%@
include file="css/navbar.css"%>
<%@include file="css/user-dashboard.css"%>
<%@include file="css/form.css"%>
</style>
</head>
<body>
	<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="userloggedin?userId=${userId}">User</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>
	<div class="row">
		<div class="container">
			<table id="alter" class="center">
				<caption></caption>
				<th></th>
				<td>
					<div class="test_box box-01 col-xs-6 col-md-4">
						<div class="inner">
							<a href="epassformtype?userId=${userId}" class="test_click">
								<div class="flex_this">
									<h1 class="test_title">Epass Application Form</h1>
								</div>
							</a>
						</div>
					</div>
				</td>
				<td>
					<div class="test_box box-02 col-xs-6 col-md-4">
						<div class="inner">
							<a href="updateuserform?userId=${userId}" class="test_click">
								<div class="flex_this">
									<h1 class="test_title">User Update</h1>
								</div>
							</a>
						</div>
					</div>
				</td>
				<td>
					<div class="test_box box-03 col-xs-6 col-md-4">
						<div class="inner">
							<a href="epassapplicationstatus?userId=${userId}" class="test_click">
								<div class="flex_this">
									<h1 class="test_title">Application Status</h1>
								</div>
							</a>
						</div>
					</div>
				</td>
			</table>
		</div>
	</div>
</body>
</html>