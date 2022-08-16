<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Epass Form Type</title>
<style type="text/css">
<%@include file ="css/navbar.css"%>
<%@include file="css/user-dashboard.css"%>
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
		<table id="alter" class="center"><caption></caption>
		<th scope="col"></th>
				<tr>
					<td>
						<div class="test_box box-01 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassformwithindistrict?userId=${userId}" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Within District</h1>
									</div>
								</a>
							</div>
						</div>
						</td>
						<td>
						<div class="test_box box-02 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassformacrossdistrict?userId=${userId}" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Across District</h1>
									</div>
								</a>
							</div>
						</div>
						</td>
						<td>
						<div class="test_box box-03 col-xs-6 col-md-4">
							<div class="inner">
								<a href="epassformoutsidestate?userId=${userId}" class="test_click">
									<div class="flex_this">
										<h1 class="test_title">Outside State</h1>
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