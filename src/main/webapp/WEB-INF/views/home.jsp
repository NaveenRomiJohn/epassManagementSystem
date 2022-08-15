<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<style>
<%@include file="navbar.css" %>
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
	<!-- <iframe src="https://covid19.who.int/region/searo/country/in" width="400" height="400"></iframe> -->
	
	<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="https://blog.mygov.in/wp-content/uploads/2020/05/WhatsApp-Image-2020-05-27-at-5.04.29-PM.jpeg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="img_mountains_wide.jpg" style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>
</body>
</html>