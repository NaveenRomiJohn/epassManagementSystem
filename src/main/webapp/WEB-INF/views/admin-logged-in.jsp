<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin In</title>
<style>
<%@include file="css/navbar.css"%>
<%@include file="css/admin-dashboard.css"%>
</style>
</head>
<body>
	<ul class="topnav">
		<li><a href="/home/index">Home</a></li>
		<li><a class="active" href="/admin/adminloggedin?adminId=${adminId}">Admin</a></li>
		<li class="right"><a href="">Welcome: ${adminId}</a></li>
	</ul>

	<div class="row">
		<div class="container">
			<table id="alter" class="center"><caption></caption><th></th>
				<tr>
					<td>
						<div class="test_box box-01 col-xs-6 col-md-4">
							<div class="inner">
								<a href="/admin/allusers" class="test_click">
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
								<a href="/admin/epassprocessingstatus" class="test_click">
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
								<a href="/admin/epassapprovedlist" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Epass Approved</h1>
									</div>
								</a>
							</div>
						</div>
					</td>
					</tr>
					<tr>
					<td><div class="test_box box-04 col-xs-6 col-md-4">
							<div class="inner">
								<a href="/admin/epassrejectedlist" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Epass Rejected</h1>
									</div>
								</a>
							</div>
						</div></td>
					<td>
						<div class="test_box box-05 col-xs-6 col-md-4">
							<div class="inner">
								<a href="/admin/epassrequests" class="test_click">
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
								<a href="/admin/updateadminform?adminId=${adminId}" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Update Admin</h1>
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