<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User login</title>
<script>
function validateform() {
	var userId = document.reg_form.userId.value;
	var userPassword = document.reg_form.userPassword.value;
	if (userId == null || userId == "") {
		alert("User Id is required or can't be blank");
		return false;
	} else if (userPassword == null || userPassword == "") {
		alert("User Password is required or can't be blank");
		return false;
	}
}
</script>
<style>
<%@include file ="css/login.css"%>
</style>
</head>
<body>
	<div class="app">
		<div class="bg"></div>
		<form:form action="userlogin" name="reg_form" method="post"
			modelAttribute="userlogin" onsubmit="return validateform()">
			<header>
				<h1>User Login</h1>
				<div class="col-12 col-md-6 col-lg-6 text-position">
                        <img src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-image.svg" class="section__image" alt="Quarantine">
                        <img src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-virus.svg" class="section__virus1" alt="">
                    </div>
			</header>
			<div class="inputs">
				<form:input path="userId" name="userId"
					placeholder="User ID"/> <form:input type="password"
					path="userPassword" name="userPassword" placeholder="Password"/>
			</div>
			<br> <br> <br> <br>
			<button type="submit" value="Login">Login</button>
		</form:form>

		<footer>
			<p>
				Don't have an account? <a href="/home/adduserform">Sign Up</a>
			</p>
		</footer>
	</div>
</body>
</html>