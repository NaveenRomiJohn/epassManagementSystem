<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<style>
<%@include file="css/navbar.css" %>
<%@include file="css/covid.css" %>
</style>
</head>
<body>
	<div>
		<ul class="topnav">
			<li><a class="active" href="/home/index">Home</a></li>
			<li><a href="/home/userloginform">User</a></li>
			<li><a href="/admin/adminloginform">Admin</a></li>
			<li class="right"><a href="/home/index">Epass Management
					System</a></li>
		</ul>
	</div>
	<br>
	<h2 class="section__span">Vehicle e-Pass for essential services</h2>
	<br>
	<!-- Main -->
	<main>
		<!--COVİD-19 Alert-->
		<section class="section hero">
			<div class="container">
				<div class="row direction">
					<div class="col-12 col-md-6 col-lg-6 text-position">
						<h2 class="section__title">COVID-19 Alert</h2>
						<span class="section__span">Stay at Home quarantine to stop
							Corona virus</span> <a href="/home/userloginform"
							class="section__button seciton__button--center">Apply Epass</a>
					</div>
					<div class="col-12 col-md-6 col-lg-6 text-position">
						<img
							src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-image.svg"
							class="section__image" alt="Quarantine"> <img
							src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-virus.svg"
							class="section__virus1" alt=""> <img
							src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-virus.svg"
							class="section__virus2" alt=""> <img
							src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-virus.svg"
							class="section__virus3" alt="">
					</div>
				</div>
			</div>
		</section>
		<div style="padding: 0 16px;">
			<h3 class="section__title">KINDLY READ INSTRUCTIONS BELOW</h3>
			<div class="upside__desc">
				<label>1.The pass holders are requested to carry the Driving
					License compulsorily. </label>
			</div>
			<div class="upside__desc">
				<label>2. Strict actions shall be taken against those found
					misusing the e-pass. </label>
			</div>
			<div class="upside__desc">
				<label>3. The state authority is liable to cancel the pass
					anytime. </label>
			</div>
			<div class="upside__desc">
				<label>4. This Vehicle e-Pass is non-transferable. </label>
			</div>
		</div>
	</main>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap-grid.min.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display:wght@700&display=swap" rel="stylesheet">
</body>
</html>