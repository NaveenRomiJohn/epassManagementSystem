<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Epass Form Type</title>
<style type="text/css">
<%@include file ="navbar.css" %> 
* {
	box-sizing: border-box;
}

.column {
	float: left;
	width: 33.33%;
	padding: 5px;
}

.row::after {
	content: "";
	clear: both;
	display: table;
}
</style>
</head>
<body>
	<ul class="topnav">
		<li><a href="home">Home</a></li>
		<li><a class="active" href="userloginform">User</a></li>
		<li><a href="adminloginform">Admin</a></li>
		<li class="right"><a href="home">Epass Management System</a></li>
	</ul>

	<div class="D116_offer_box">
		<a target="_blank" rel="noopener noreferrer"
			href="epassformwithindistrict" class="D116_offer_anchor">
			<div class="D116_container">
				<img
					src="https://images.newindianexpress.com/uploads/user/imagelibrary/2021/5/26/w600X390/lockdown_TN_EPS54.jpg"
					width="273" height="146">
			</div>
			<div class="D116_offer-footer">
				<b>Within District</b>
			</div>
		</a>
	</div>
	<!-- <div style="padding: 0 16px;">
	<h2>Epass Type</h2>
	<br>
	<a href="epassformwithindistrict">
         <img alt="Qries" src="https://images.newindianexpress.com/uploads/user/imagelibrary/2021/5/26/w600X390/lockdown_TN_EPS54.jpg"
          style="width:100%">Within District
      </a>
	<br>
	<a href="epassformacrossdistrict">
         <img alt="Qries" src="https://www.thenewsminute.com/sites/default/files/styles/slideshow_image_size/public/Inter-state-lockdown-checking_0_0.jpg?itok=tqtqsAxk"
          style="width:100%">Across District
      </a>
	<br>
	<a href="epassformoutsidestate">
         <img alt="Qries" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh_nv0V4Mg6k2Jq6BOPJw3tEuuoymjOL6Ckg&usqp=CAU"
          style="width:100%">Outside State
      </a>
	</div> -->
</body>
</html>