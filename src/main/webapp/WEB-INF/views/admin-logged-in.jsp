<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin In</title>
<style>
<%@include file="navbar.css"%>
<%@include file="dashboard.css"%>
</style>
</head>
<body>
	<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a class="active" href="adminloggedin">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div class="row">
		<div class="container">
			<table id="alter" class="center">
				<tr>
					<td>
						<div class="test_box box-01 col-xs-6 col-md-4">
							<div class="inner">
								<a href="allusers" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Users List</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					<td>
						<div class="test_box box-02 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassprocessingstatus" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Epass Requests</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					<td>
						<div class="test_box box-03 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassapprovedlist" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Epass Approved</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					<td><div class="test_box box-04 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassrejectedlist" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Epass Rejected</h1>
									</div>
								</a>
							</div>
						</div></td>
				</tr>
				<tr>
					<td>
						<div class="test_box box-05 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassrequests" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">All Epass Details</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					<td>
						<div class="test_box box-06 col-xs-6 col-md-4">
							<div class="inner">
								<a href="updateadminform" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Update Admin</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					<td>
						<div class="test_box box-07 col-xs-6 col-md-4">
							<div class="inner">
								<a href="deleteadminform" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Delete Admin</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					<td>
						<div class="test_box box-08 col-xs-6 col-md-4">
							<div class="inner">
								<a href="addadminform" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Add Admin</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>