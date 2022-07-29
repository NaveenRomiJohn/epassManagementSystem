<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.chainsys.epassManagementSystem.pojo.User"%>
<jsp:useBean id="obj"
	class="com.chainsys.epassManagementSystem.pojo.User" />
<jsp:setProperty property="*" name="obj" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	boolean status = User.validate(obj);
	if (status) {
		out.println("You r successfully logged in");
		session.setAttribute("session", "TRUE");
	} else {
		out.print("Sorry, email or password error");
	%>
	<jsp:include page="index.jsp"></jsp:include>
	<%
	}
	%>
</body>
</html>