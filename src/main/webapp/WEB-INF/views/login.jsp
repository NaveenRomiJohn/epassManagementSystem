<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.chainsys.epassManagementSystem.pojo.User;"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>
</head>
<body>
	<%
	String userid = request.getParameter("user_id");
	String password = request.getParameter("password");
	User user=new User();
	/* try {
 	if (user.getUserId().equals(userid) && user.getUserPassword().equals(password)) {
  	out.println(" Welcome " + user.getFirstName() "</h2>"); 
 	} else {
 	 out.println("Invalid password or username.");
 	}
	} catch (Exception e) {
	 e.printStackTrace();
	} */
%>
</body>
</html>