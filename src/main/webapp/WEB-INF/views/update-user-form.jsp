<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Pass User form</title>
<style>
*{text-align: center;}
</style>
</head>
<body>
<h1>E-Pass Management System</h1>
	<h3>Update user details</h3>
	<div id="root">
		<div id="form">
			 <form:form action="updateuser" method="post" modelAttribute="updateuser">
                
                <div>
                UserId :<input type="hidden" id="user_id" name="user_id" >
                <%-- UserId :<form:input path="user_id" /> --%>
                </div>
                <br>
                <div>
                First Name : <form:input path="first_name" />
                </div>
                <br>
                <div>
                Last Name : <form:input path="last_name" />
                </div>
                <br>
                <div>
                Gender : <form:radiobutton path="gender" value="Male" />Male
                         <form:radiobutton path="gender" value="Female" />Female
                </div>
                <br>
                <div>
                Age : <form:input type="text" path="age" />
                </div>
                <br>
                <div>
                Email : <form:input path="email" />
                </div>
                <br>
                <div>
                Address : <form:textarea path="address" cols="50" rows="4" />  
                </div>
                <br>
                <div>
                Mobile Number : <form:input path="mobile_number" name="phone" size="10" />
                </div>
                <br>
                <div>
                User Password : <form:password path="user_password"/>
                </div>
                <br>
                <div>
                <input type="submit" value="Update" />
                <input type="reset">
                </div>
            </form:form>
		</div>
	</div>
</body>
</html>