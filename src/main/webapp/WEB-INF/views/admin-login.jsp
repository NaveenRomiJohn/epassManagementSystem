<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<script>
	function validateform() {
		var adminId = document.reg_form.adminId.value;
		var adminPassword = document.reg_form.adminPassword.value;
		if (adminId == null || adminId == "") {
			alert("Admin Id is required or can't be blank");
			return false;
		} else if (adminPassword == null || adminPassword == "") {
			alert("Admin Password is required or can't be blank");
			return false;
		}
	}
</script>
<style>
<%@include file="css/login.css"%>
</style>
</head>
<body>

		<div class="app">
			<div class="bg"></div>
			<form:form action="/admin/adminlogin" name="reg_form" method="post"
				modelAttribute="adminlogin" onsubmit="return validateform()">
				<header>
					<h1>Admin Login</h1>
					<div class="col-12 col-md-6 col-lg-6 text-position">
                        <img src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-image.svg" class="section__image" alt="Quarantine">
                        <img src="https://raw.githubusercontent.com/alaattinerby/Covid-19-Website/4c233460e18c1a8cfba4f7c4830e8da0e7c5e8e9/Covid-19/img/section-virus.svg" class="section__virus1" alt="">
                    </div>
				</header>
				<div class="inputs">
					<input type="text" id="adminId" name="adminId"
						placeholder="Admin ID"> <input type="password"
						id="adminPassword" name="adminPassword" placeholder="Password">
				</div>
				<br> <br> <br> <br>
				<button type="submit" value="Login">Login</button>
			</form:form>
			<footer>
			<div>
				<div style="color: red;">${message}</div>
			</div>
		</footer>
		</div>

</body>
</html>