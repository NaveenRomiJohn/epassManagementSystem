<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<style>
* {
	text-align: center;
}

body {
	margin: 0;
}

ul.topnav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

ul.topnav li {
	float: left;
}

ul.topnav li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

ul.topnav li a:hover:not(.active) {
	background-color: #111;
}

ul.topnav li a.active {
	background-color: #04AA6D;
}

ul.topnav li.right {
	float: right;
}

@media screen and (max-width: 600px) {
	ul.topnav li.right, ul.topnav li {
		float: none;
	}
}
</style>
</head>
<body>
	<ul class="topnav">
		<li><a class="active" href="home">Home</a></li>
		<li><a href="userloginform">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div style="padding: 0 16px;">
		<h2>Vehicle e-Pass for essential services</h2>
		<br>
		<hr />
		<h4>KINDLY READ INSTRUCTIONS BELOW</h4>
		<hr />
		<div class="tdata">
			<label>1.The pass holders are requested to carry the Driving
				License compulsorily. </label>
		</div>
		<div class="tdata">
			<label>2. Strict actions shall be taken against those found
				misusing the e-pass. </label>
		</div>
		<div class="tdata">
			<label>3. The vehicle e-Pass is only for
				intrastate&#x2f;interstate travel. </label>
		</div>
		<div class="tdata">
			<label>4. The state authority is liable to cancel the pass
				anytime. </label>
		</div>
		<div class="tdata">
			<label>5. This Vehicle e-Pass is non-transferable. </label>
		</div>
	</div>
</body>
</html>